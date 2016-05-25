.class public final Lcom/android/server/media/RemoteDisplayProviderWatcher;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RemoteDisplayProvider"


# instance fields
.field private final mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/RemoteDisplayProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "RemoteDisplayProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userId"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    .line 62
    iput-object p3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 63
    iput p4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->scanPackages()V

    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 189
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 191
    .local v2, "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    .end local v1    # "i":I
    .end local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    :goto_1
    return v1

    .line 189
    .restart local v1    # "i":I
    .restart local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v2    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private hasCaptureVideoPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 176
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scanPackages()V
    .locals 13

    .prologue
    .line 109
    iget-boolean v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    if-nez v9, :cond_1

    .line 148
    :cond_0
    return-void

    .line 115
    :cond_1
    const/4 v7, 0x0

    .line 116
    .local v7, "targetIndex":I
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.media.remotedisplay.RemoteDisplayProvider"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-virtual {v9, v2, v10, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 119
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 120
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v5, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 121
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 122
    .local v6, "sourceIndex":I
    if-gez v6, :cond_3

    .line 123
    new-instance v3, Lcom/android/server/media/RemoteDisplayProviderProxy;

    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-direct {v3, v9, v10, v11}, Lcom/android/server/media/RemoteDisplayProviderProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 127
    .local v3, "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    invoke-virtual {v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 128
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "targetIndex":I
    .local v8, "targetIndex":I
    invoke-virtual {v9, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    invoke-interface {v9, v3}, Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;->addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    move v7, v8

    .line 130
    .end local v8    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    goto :goto_0

    .end local v3    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    :cond_3
    if-lt v6, v7, :cond_2

    .line 131
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 132
    .restart local v3    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    invoke-virtual {v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->start()V

    .line 133
    invoke-virtual {v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->rebindIfDisconnected()V

    .line 134
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-static {v9, v6, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v7, v8

    .end local v8    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    goto :goto_0

    .line 140
    .end local v3    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "sourceIndex":I
    :cond_4
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 141
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, v7, :cond_0

    .line 142
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 143
    .restart local v3    # "provider":Lcom/android/server/media/RemoteDisplayProviderProxy;
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mCallback:Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;

    invoke-interface {v9, v3}, Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;->removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 144
    iget-object v9, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private verifyServiceTrusted(Landroid/content/pm/ServiceInfo;)Z
    .locals 4
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_REMOTE_DISPLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    const-string v1, "RemoteDisplayProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring remote display provider service because it did not require the BIND_REMOTE_DISPLAY permission in its manifest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return v0

    .line 162
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->hasCaptureVideoPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    const-string v1, "RemoteDisplayProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring remote display provider service because it does not have the CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Watcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mProviders.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 78
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 98
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-virtual {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->stop()V

    .line 102
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
