.class public Lcom/android/server/search/SearchManagerService;
.super Landroid/app/ISearchManager$Stub;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/search/SearchManagerService$1;,
        Lcom/android/server/search/SearchManagerService$GlobalSearchProviderObserver;,
        Lcom/android/server/search/SearchManagerService$MyPackageMonitor;,
        Lcom/android/server/search/SearchManagerService$UserReceiver;,
        Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSearchables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/search/Searchables;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/ISearchManager$Stub;-><init>()V

    .line 66
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 75
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 78
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/search/SearchManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/search/SearchManagerService$UserReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/search/SearchManagerService$UserReceiver;-><init>(Lcom/android/server/search/SearchManagerService;Lcom/android/server/search/SearchManagerService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    new-instance v1, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;-><init>(Lcom/android/server/search/SearchManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/android/server/search/SearchManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 82
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/search/SearchManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/search/SearchManagerService;I)Lcom/android/server/search/Searchables;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/search/SearchManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/search/SearchManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/search/SearchManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/search/SearchManagerService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getSearchables(I)Lcom/android/server/search/Searchables;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 87
    .local v0, "origId":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 89
    .local v3, "userExists":Z
    :goto_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 91
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    :goto_1
    return-object v2

    .line 87
    .end local v3    # "userExists":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 91
    .restart local v3    # "userExists":Z
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    iget-object v5, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v5

    .line 94
    :try_start_1
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    .line 96
    .local v2, "searchables":Lcom/android/server/search/Searchables;
    if-nez v2, :cond_2

    .line 98
    new-instance v2, Lcom/android/server/search/Searchables;

    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Lcom/android/server/search/Searchables;-><init>(Landroid/content/Context;I)V

    .line 99
    .restart local v2    # "searchables":Lcom/android/server/search/Searchables;
    invoke-virtual {v2}, Lcom/android/server/search/Searchables;->buildSearchableList()V

    .line 100
    iget-object v4, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 102
    :cond_2
    monitor-exit v5

    goto :goto_1

    .line 103
    .end local v2    # "searchables":Lcom/android/server/search/Searchables;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 91
    .end local v3    # "userExists":Z
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 110
    monitor-exit v1

    .line 112
    :cond_0
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "SearchManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 291
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v3, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    monitor-enter v3

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 293
    const-string v2, "\nUser: "

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 294
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 295
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/search/Searchables;

    invoke-virtual {v2, p1, v1, p3}, Lcom/android/server/search/Searchables;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    monitor-exit v3

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAssistIntent(I)Landroid/content/ComponentName;
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v12, 0x0

    .line 245
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getAssistIntent"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 247
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 248
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.ASSIST"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v7, "assistIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-interface {v10, v7, v0, v1, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 253
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v9, :cond_0

    .line 254
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    .end local v7    # "assistIntent":Landroid/content/Intent;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v11

    .line 260
    .local v11, "re":Landroid/os/RemoteException;
    const-string v0, "SearchManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException in getAssistIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    move-object v0, v12

    .line 264
    goto :goto_0

    .line 261
    :catch_1
    move-exception v8

    .line 262
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "SearchManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getAssistIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalSearchActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivities()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 2
    .param p1, "launchActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string v0, "SearchManagerService"

    const-string v1, "getSearchableInfo(), activity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/search/Searchables;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getSearchablesInGlobalSearchList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/search/SearchManagerService;->getSearchables(I)Lcom/android/server/search/Searchables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/search/Searchables;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public launchAssistAction(ILjava/lang/String;I)Z
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 269
    invoke-virtual {p0, p3}, Lcom/android/server/search/SearchManagerService;->getAssistIntent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 270
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 271
    const/4 v5, 0x0

    .line 283
    :goto_0
    return v5

    .line 273
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 275
    .local v2, "ident":J
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ASSIST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 277
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 278
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0, v4, p1, p2, p3}, Landroid/app/IActivityManager;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 281
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 279
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 281
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    const/4 v5, 0x1

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method
