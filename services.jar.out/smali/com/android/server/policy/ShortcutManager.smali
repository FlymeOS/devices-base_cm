.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 56
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    .line 55
    return-void
.end method

.method private loadShortcuts()V
    .locals 22

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 98
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 99
    const v20, 0x1110003

    .line 98
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 100
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    const-string/jumbo v19, "bookmarks"

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 103
    :goto_0
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 95
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_1
    return-void

    .line 109
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    const-string/jumbo v19, "bookmark"

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 113
    const-string/jumbo v19, "package"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "packageName":Ljava/lang/String;
    const-string/jumbo v19, "class"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "className":Ljava/lang/String;
    const-string/jumbo v19, "shortcut"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "shortcutName":Ljava/lang/String;
    const-string/jumbo v19, "category"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "categoryName":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 119
    const-string/jumbo v19, "ShortcutManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to get shortcut for: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 161
    .end local v2    # "categoryName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v17    # "shortcutName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 162
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v19, "ShortcutManager"

    const-string/jumbo v20, "Got exception parsing bookmarks."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 123
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "categoryName":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "shortcutName":Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 127
    .local v16, "shortcutChar":I
    if-eqz v12, :cond_3

    if-eqz v3, :cond_3

    .line 128
    const/4 v9, 0x0

    .line 129
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v12, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .local v4, "componentName":Landroid/content/ComponentName;
    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v19

    invoke-virtual {v11, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 145
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    :goto_2
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v9, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 158
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .local v18, "title":Ljava/lang/String;
    :goto_3
    new-instance v15, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    move-object/from16 v0, v18

    invoke-direct {v15, v0, v10}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 159
    .local v15, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 163
    .end local v2    # "categoryName":Ljava/lang/String;
    .end local v3    # "className":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v16    # "shortcutChar":I
    .end local v17    # "shortcutName":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 164
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v19, "ShortcutManager"

    const-string/jumbo v20, "Got exception parsing bookmarks."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 132
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "categoryName":Ljava/lang/String;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "packageName":Ljava/lang/String;
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "shortcutChar":I
    .restart local v17    # "shortcutName":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 134
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v19, 0x1

    :try_start_4
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    .line 133
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 135
    .local v13, "packages":[Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "componentName":Landroid/content/ComponentName;
    const/16 v19, 0x0

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 137
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    const/16 v19, 0x0

    :try_start_5
    move/from16 v0, v19

    invoke-virtual {v11, v4, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v9

    .local v9, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_2

    .line 138
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    :catch_3
    move-exception v8

    .line 139
    .local v8, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string/jumbo v19, "ShortcutManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to add bookmark: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 140
    const-string/jumbo v21, "/"

    .line 139
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 149
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v13    # "packages":[Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    .line 150
    const-string/jumbo v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 151
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v18, ""

    .restart local v18    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .line 153
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "title":Ljava/lang/String;
    :cond_4
    const-string/jumbo v19, "ShortcutManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 154
    const-string/jumbo v21, ": missing package/class or category attributes"

    .line 153
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 4
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .prologue
    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x0

    .line 79
    .local v0, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 80
    .local v1, "shortcutChar":I
    if-eqz v1, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 85
    :cond_0
    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 92
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    :cond_2
    return-object v2
.end method
