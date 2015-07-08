.class public Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkProviderSettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceWatcher;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "c"    # Landroid/content/Context;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    .line 413
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 415
    iput-object p3, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->mContext:Landroid/content/Context;

    .line 416
    return-void
.end method


# virtual methods
.method public observer()V
    .locals 4

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "network_provider_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 422
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 427
    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    iget-object v2, v2, Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_provider_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->mzGetFieldPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->mzGetFieldLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->mzInvokeMethodUnbindLocked()V

    .line 433
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1, v0}, Lcom/android/server/ServiceWatcher;->mzInvokeMethodBindBestPackageLocked(Ljava/lang/String;)Z

    .line 434
    monitor-exit v2

    .line 437
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void

    .line 434
    .restart local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
