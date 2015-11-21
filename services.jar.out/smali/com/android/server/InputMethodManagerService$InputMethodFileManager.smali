.class Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodFileManager"
.end annotation


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"


# instance fields
.field private final mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

.field private final mAdditionalSubtypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3445
    .local p1, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3443
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    .line 3446
    if-nez p1, :cond_0

    .line 3447
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "methodMap is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3449
    :cond_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    .line 3450
    if-nez p2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3453
    .local v2, "systemDir":Ljava/io/File;
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v3, "inputmethod"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3454
    .local v0, "inputMethodDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3455
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create dir.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "subtypes.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3458
    .local v1, "subtypeFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 3459
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3461
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    invoke-static {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 3467
    :goto_1
    return-void

    .line 3450
    .end local v0    # "inputMethodDir":Ljava/io/File;
    .end local v1    # "subtypeFile":Ljava/io/File;
    .end local v2    # "systemDir":Ljava/io/File;
    :cond_2
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 3464
    .restart local v0    # "inputMethodDir":Ljava/io/File;
    .restart local v1    # "subtypeFile":Ljava/io/File;
    .restart local v2    # "systemDir":Ljava/io/File;
    :cond_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    invoke-static {v3, v4}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V

    goto :goto_1
.end method

.method static synthetic access$600(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3427
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 3470
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3471
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3472
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    invoke-static {v0, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 3474
    monitor-exit v1

    .line 3475
    return-void

    .line 3474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V
    .locals 22
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3552
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3629
    :cond_0
    :goto_0
    return-void

    .line 3553
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    .line 3554
    const/4 v7, 0x0

    .line 3556
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    .line 3557
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 3558
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3559
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v18

    .line 3562
    .local v18, "type":I
    :cond_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 3563
    :cond_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3564
    .local v6, "firstNodeName":Ljava/lang/String;
    const-string v19, "subtypes"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 3565
    new-instance v19, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v20, "Xml doesn\'t start with subtypes"

    invoke-direct/range {v19 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3611
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "type":I
    :catch_0
    move-exception v4

    .line 3612
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error reading subtypes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3621
    if-eqz v7, :cond_0

    .line 3623
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3624
    :catch_1
    move-exception v5

    .line 3625
    .local v5, "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3567
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "type":I
    :cond_4
    :try_start_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3568
    .local v3, "depth":I
    const/4 v2, 0x0

    .line 3569
    .local v2, "currentImiId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3571
    .local v17, "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    :goto_1
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v3, :cond_c

    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 3572
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 3574
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 3575
    .local v14, "nodeName":Ljava/lang/String;
    const-string v19, "imi"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 3576
    const/16 v19, 0x0

    const-string v20, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3577
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 3578
    const-string v19, "InputMethodManagerService"

    const-string v20, "Invalid imi id found in subtypes.xml"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3614
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catch_2
    move-exception v4

    .line 3615
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error reading subtypes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3621
    if-eqz v7, :cond_0

    .line 3623
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 3624
    :catch_3
    move-exception v5

    .line 3625
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3581
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v2    # "currentImiId":Ljava/lang/String;
    .restart local v3    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "type":I
    :cond_7
    :try_start_6
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3582
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 3617
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catch_4
    move-exception v4

    .line 3618
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error reading subtypes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3621
    if-eqz v7, :cond_0

    .line 3623
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 3624
    :catch_5
    move-exception v5

    .line 3625
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3583
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v2    # "currentImiId":Ljava/lang/String;
    .restart local v3    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "type":I
    :cond_8
    :try_start_9
    const-string v19, "subtype"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 3584
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    if-nez v17, :cond_b

    .line 3585
    :cond_9
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IME uninstalled or not valid.: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 3621
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catchall_0
    move-exception v19

    if-eqz v7, :cond_a

    .line 3623
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 3626
    :cond_a
    :goto_2
    throw v19

    .line 3588
    .restart local v2    # "currentImiId":Ljava/lang/String;
    .restart local v3    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "type":I
    :cond_b
    const/16 v19, 0x0

    :try_start_b
    const-string v20, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3590
    .local v8, "icon":I
    const/16 v19, 0x0

    const-string v20, "label"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3592
    .local v13, "label":I
    const/16 v19, 0x0

    const-string v20, "imeSubtypeLocale"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3594
    .local v10, "imeSubtypeLocale":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "imeSubtypeMode"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3596
    .local v11, "imeSubtypeMode":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "imeSubtypeExtraValue"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3598
    .local v9, "imeSubtypeExtraValue":Ljava/lang/String;
    const-string v19, "1"

    const/16 v20, 0x0

    const-string v21, "isAuxiliary"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 3600
    .local v12, "isAuxiliary":Z
    new-instance v19, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v16

    .line 3608
    .local v16, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 3621
    .end local v8    # "icon":I
    .end local v9    # "imeSubtypeExtraValue":Ljava/lang/String;
    .end local v10    # "imeSubtypeLocale":Ljava/lang/String;
    .end local v11    # "imeSubtypeMode":Ljava/lang/String;
    .end local v12    # "isAuxiliary":Z
    .end local v13    # "label":I
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_c
    if-eqz v7, :cond_0

    .line 3623
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    .line 3624
    :catch_6
    move-exception v5

    .line 3625
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3624
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v5    # "e1":Ljava/io/IOException;
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catch_7
    move-exception v5

    .line 3625
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v20, "InputMethodManagerService"

    const-string v21, "Failed to close."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    .locals 13
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3507
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p2, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 3508
    .local v6, "isSetMethodMap":Z
    :goto_0
    const/4 v2, 0x0

    .line 3510
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 3511
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3512
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v7, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3513
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3514
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3515
    const/4 v10, 0x0

    const-string v11, "subtypes"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3516
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3517
    .local v5, "imiId":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 3518
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IME uninstalled or not valid.: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3542
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imiId":Ljava/lang/String;
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 3543
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "InputMethodManagerService"

    const-string v11, "Error writing subtypes"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3544
    if-eqz v2, :cond_0

    .line 3545
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3548
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 3507
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "isSetMethodMap":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3521
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "imiId":Ljava/lang/String;
    .restart local v6    # "isSetMethodMap":Z
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    const-string v11, "imi"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3522
    const/4 v10, 0x0

    const-string v11, "id"

    invoke-interface {v7, v10, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3523
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 3524
    .local v9, "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 3525
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 3526
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3527
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v10, 0x0

    const-string v11, "subtype"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3528
    const/4 v10, 0x0

    const-string v11, "icon"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3529
    const/4 v10, 0x0

    const-string v11, "label"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3530
    const/4 v10, 0x0

    const-string v11, "imeSubtypeLocale"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3531
    const/4 v10, 0x0

    const-string v11, "imeSubtypeMode"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3532
    const/4 v10, 0x0

    const-string v11, "imeSubtypeExtraValue"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3533
    const/4 v11, 0x0

    const-string v12, "isAuxiliary"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v11, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3535
    const/4 v10, 0x0

    const-string v11, "subtype"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3525
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3533
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 3537
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    const/4 v10, 0x0

    const-string v11, "imi"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 3539
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "imiId":Ljava/lang/String;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v10, 0x0

    const-string v11, "subtypes"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3540
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3541
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 8
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "additionalSubtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 3479
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3480
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3481
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v0, p2

    .line 3482
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3483
    aget-object v2, p2, v1

    .line 3484
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3485
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3482
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3487
    :cond_0
    const-string v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3494
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3491
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3492
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    invoke-static {v4, v6, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 3494
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3495
    return-void
.end method

.method public getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3498
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3499
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->mAdditionalSubtypesMap:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 3500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
