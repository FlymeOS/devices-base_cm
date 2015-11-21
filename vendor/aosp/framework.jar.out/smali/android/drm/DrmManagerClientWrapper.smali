.class public Landroid/drm/DrmManagerClientWrapper;
.super Landroid/drm/DrmManagerClient;
.source "DrmManagerClientWrapper.java"


# static fields
.field private static final ACTION_STRING_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final ACTION_STRING_METADATA:Ljava/lang/String; = "metadata"

.field private static final ACTION_STRING_RIGHTS:Ljava/lang/String; = "rights"

.field private static final FAKE_ACTION:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "DrmManagerClientWrapper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private parseConstraints(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "constraints"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 163
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v3, "contentValues":Landroid/content/ContentValues;
    const-string v7, "\n"

    invoke-static {p1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "attrs":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 166
    .local v1, "attr":Ljava/lang/String;
    const-string v7, "\t"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "values":[Ljava/lang/String;
    array-length v7, v6

    if-lez v7, :cond_0

    aget-object v7, v6, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 168
    aget-object v7, v6, v9

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "attr":Ljava/lang/String;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private parseMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 175
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v3, "contentValues":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 177
    const-string v7, "\n"

    invoke-static {p1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "attrs":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 179
    .local v1, "attr":Ljava/lang/String;
    const-string v7, "\t"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "values":[Ljava/lang/String;
    aget-object v7, v6, v10

    const-string v8, "DRM-TYPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    aget-object v7, v6, v9

    if-eqz v7, :cond_0

    .line 182
    const-string v7, "DRM-TYPE"

    aget-object v8, v6, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    :cond_0
    aget-object v7, v6, v10

    const-string v8, "Rights-Issuer"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    aget-object v7, v6, v9

    if-eqz v7, :cond_1

    .line 188
    const-string v7, "Rights-Issuer"

    aget-object v8, v6, v9

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "attr":Ljava/lang/String;
    .end local v2    # "attrs":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private parseRightsStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rights"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "actionPath":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Given path should be non null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    :cond_1
    const/4 v4, 0x0

    .line 103
    .local v4, "info":Ljava/lang/String;
    const/4 v6, 0x0

    .line 105
    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 106
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 108
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v6, v7

    .line 111
    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0, v2}, Landroid/drm/DrmManagerClientWrapper;->getInternalInfo(Ljava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 115
    if-eqz v6, :cond_3

    .line 117
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got RightsStatus info! info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClientWrapper;->parseRightsStatus(Ljava/lang/String;)I

    move-result v8

    return v8

    .line 118
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkRightsStatus failed to close stream! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 113
    .local v5, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkRightsStatus failed! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    if-eqz v6, :cond_3

    .line 117
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 118
    :catch_2
    move-exception v1

    .line 119
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkRightsStatus failed to close stream! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_4

    .line 117
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 120
    :cond_4
    :goto_3
    throw v8

    .line 118
    :catch_3
    move-exception v1

    .line 119
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "DrmManagerClientWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkRightsStatus failed to close stream! Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 112
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "constraints"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "actionPath":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 63
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Given path should be non null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 66
    :cond_1
    const/4 v4, 0x0

    .line 68
    .local v4, "info":Ljava/lang/String;
    const/4 v6, 0x0

    .line 70
    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 71
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 73
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v6, v7

    .line 76
    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0, v2}, Landroid/drm/DrmManagerClientWrapper;->getInternalInfo(Ljava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 80
    if-eqz v6, :cond_3

    .line 82
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got Constraints info! info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClientWrapper;->parseConstraints(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    return-object v8

    .line 83
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getConstraints failed to close stream! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 78
    .local v5, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getConstraints failed! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    if-eqz v6, :cond_3

    .line 82
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 83
    :catch_2
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getConstraints failed to close stream! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_4

    .line 82
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 85
    :cond_4
    :goto_3
    throw v8

    .line 83
    :catch_3
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "DrmManagerClientWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getConstraints failed to close stream! Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 77
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "metadata0:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "actionPath":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 133
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Given path should be non null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 136
    :cond_1
    const/4 v4, 0x0

    .line 138
    .local v4, "info":Ljava/lang/String;
    const/4 v6, 0x0

    .line 140
    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 141
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 143
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v6, v7

    .line 146
    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0, v2}, Landroid/drm/DrmManagerClientWrapper;->getInternalInfo(Ljava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 150
    if-eqz v6, :cond_3

    .line 152
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 158
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got Metadata info! info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClientWrapper;->parseMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    return-object v8

    .line 153
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMetadata failed to close stream! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 148
    .local v5, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMetadata failed! IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-eqz v6, :cond_3

    .line 152
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 153
    :catch_2
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "DrmManagerClientWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMetadata failed to close stream! Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_4

    .line 152
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 155
    :cond_4
    :goto_3
    throw v8

    .line 153
    :catch_3
    move-exception v1

    .line 154
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "DrmManagerClientWrapper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMetadata failed to close stream! Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 147
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method
