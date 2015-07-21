.class Lcom/android/server/am/TaskPersister$OtherDeviceTask;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtherDeviceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/am/TaskPersister$OtherDeviceTask;",
        ">;"
    }
.end annotation


# instance fields
.field final mAffiliatedTaskId:I

.field final mComponentName:Landroid/content/ComponentName;

.field final mFile:Ljava/io/File;

.field final mLaunchPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskId:I


# direct methods
.method private constructor <init>(Ljava/io/File;Landroid/content/ComponentName;IILandroid/util/ArraySet;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "taskId"    # I
    .param p4, "affiliatedTaskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/content/ComponentName;",
            "II",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    .local p5, "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    .line 1084
    iput-object p2, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    .line 1085
    iput p3, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mTaskId:I

    .line 1086
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .end local p3    # "taskId":I
    :goto_0
    iput p3, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mAffiliatedTaskId:I

    .line 1087
    iput-object p5, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    .line 1088
    return-void

    .restart local p3    # "taskId":I
    :cond_0
    move p3, p4

    .line 1086
    goto :goto_0
.end method

.method static createFromFile(Ljava/io/File;)Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    .locals 18
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1102
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1105
    :cond_0
    const/4 v1, 0x0

    .line 1185
    :goto_0
    return-object v1

    .line 1108
    :cond_1
    const/4 v15, 0x0

    .line 1111
    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .local v16, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 1113
    .local v11, "in":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1116
    :cond_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "event":I
    const/4 v1, 0x1

    if-eq v10, v1, :cond_3

    const/4 v1, 0x2

    if-ne v10, v1, :cond_2

    .line 1121
    :cond_3
    const/4 v1, 0x2

    if-ne v10, v1, :cond_11

    .line 1122
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1124
    .local v13, "name":Ljava/lang/String;
    const-string v1, "task"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1125
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 1126
    .local v14, "outerDepth":I
    const/4 v3, 0x0

    .line 1127
    .local v3, "componentName":Landroid/content/ComponentName;
    const/4 v4, -0x1

    .line 1128
    .local v4, "taskId":I
    const/4 v5, -0x1

    .line 1129
    .local v5, "taskAffiliation":I
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "j":I
    :goto_1
    if-ltz v12, :cond_7

    .line 1130
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 1131
    .local v7, "attrName":Ljava/lang/String;
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1132
    .local v8, "attrValue":Ljava/lang/String;
    const-string v1, "real_activity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1133
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1129
    :cond_4
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 1134
    :cond_5
    const-string v1, "task_id"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1135
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    .line 1136
    :cond_6
    const-string v1, "task_affiliation"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1137
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    goto :goto_2

    .line 1140
    .end local v7    # "attrName":Ljava/lang/String;
    .end local v8    # "attrValue":Ljava/lang/String;
    :cond_7
    if-eqz v3, :cond_8

    const/4 v1, -0x1

    if-ne v4, v1, :cond_9

    .line 1144
    :cond_8
    const/4 v1, 0x0

    .line 1181
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 1147
    :cond_9
    const/4 v6, 0x0

    .line 1148
    .local v6, "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a
    :goto_3
    :try_start_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v1, 0x1

    if-eq v10, v1, :cond_f

    const/4 v1, 0x3

    if-ne v10, v1, :cond_b

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v14, :cond_f

    .line 1150
    :cond_b
    const/4 v1, 0x2

    if-ne v10, v1, :cond_a

    .line 1151
    const-string v1, "activity"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1152
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    :goto_4
    if-ltz v12, :cond_a

    .line 1153
    const-string v1, "launched_from_package"

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1155
    if-nez v6, :cond_c

    .line 1156
    new-instance v6, Landroid/util/ArraySet;

    .end local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1158
    .restart local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_d
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1162
    :cond_e
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1178
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "taskId":I
    .end local v5    # "taskAffiliation":I
    .end local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "event":I
    .end local v11    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "j":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "outerDepth":I
    :catch_0
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :goto_5
    move-object v9, v1

    .line 1179
    .local v9, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_3
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to parse "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ". Error "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1181
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1185
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1169
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "taskId":I
    .restart local v5    # "taskAffiliation":I
    .restart local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "event":I
    .restart local v11    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "j":I
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v14    # "outerDepth":I
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_f
    :try_start_4
    new-instance v1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/TaskPersister$OtherDeviceTask;-><init>(Ljava/io/File;Landroid/content/ComponentName;IILandroid/util/ArraySet;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1181
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 1172
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "taskId":I
    .end local v5    # "taskAffiliation":I
    .end local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "j":I
    .end local v14    # "outerDepth":I
    :cond_10
    :try_start_5
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createFromFile: Unknown xml event="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " name="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1181
    .end local v13    # "name":Ljava/lang/String;
    :goto_8
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v15, v16

    .line 1182
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1176
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_11
    :try_start_6
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createFromFile: Unable to find start tag in file="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    .line 1178
    .end local v10    # "event":I
    .end local v11    # "in":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :goto_9
    move-object v9, v1

    goto/16 :goto_6

    .line 1181
    :catchall_0
    move-exception v1

    :goto_a
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_a

    .line 1178
    :catch_2
    move-exception v1

    goto/16 :goto_5

    :catch_3
    move-exception v1

    goto :goto_9
.end method


# virtual methods
.method public compareTo(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)I
    .locals 2
    .param p1, "another"    # Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .prologue
    .line 1092
    iget v0, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mTaskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1070
    check-cast p1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->compareTo(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)I

    move-result v0

    return v0
.end method
