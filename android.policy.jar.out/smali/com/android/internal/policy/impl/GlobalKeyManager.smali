.class final Lcom/android/internal/policy/impl/GlobalKeyManager;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# static fields
.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_KEY_CODE:Ljava/lang/String; = "keyCode"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final GLOBAL_KEY_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlobalKeyManager"

.field private static final TAG_GLOBAL_KEYS:Ljava/lang/String; = "global_keys"

.field private static final TAG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mKeyMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->loadGlobalKeys(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private loadGlobalKeys(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const/4 v5, 0x0

    .line 95
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 96
    const-string v7, "global_keys"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 97
    const/4 v7, 0x0

    const-string v8, "version"

    const/4 v9, 0x0

    invoke-interface {v5, v7, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 98
    .local v6, "version":I
    const/4 v7, 0x1

    if-ne v7, v6, :cond_1

    .line 100
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 102
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 123
    .end local v2    # "element":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 124
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 127
    .end local v6    # "version":I
    :cond_2
    :goto_1
    return-void

    .line 105
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v6    # "version":I
    :cond_3
    :try_start_1
    const-string v7, "key"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    const/4 v7, 0x0

    const-string v8, "keyCode"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "keyCodeName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "component"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "componentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    .line 109
    .local v3, "keyCode":I
    if-eqz v3, :cond_0

    .line 110
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "keyCode":I
    .end local v4    # "keyCodeName":Ljava/lang/String;
    .end local v6    # "version":I
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    const-string v7, "GlobalKeyManager"

    const-string v8, "global keys file not found"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    if-eqz v5, :cond_2

    .line 124
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 118
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v7, "GlobalKeyManager"

    const-string v8, "XML parser exception reading global keys file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    if-eqz v5, :cond_2

    .line 124
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 120
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v7, "GlobalKeyManager"

    const-string v8, "I/O exception reading global keys file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    if-eqz v5, :cond_2

    .line 124
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_4

    .line 124
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v7
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 131
    .local v1, "numKeys":I
    if-nez v1, :cond_0

    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mKeyMapping.size=0"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mKeyMapping={"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 137
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 140
    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "}"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 73
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GLOBAL_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x1

    .line 82
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
