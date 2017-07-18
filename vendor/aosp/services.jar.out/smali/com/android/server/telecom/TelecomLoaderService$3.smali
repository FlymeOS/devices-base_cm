.class Lcom/android/server/telecom/TelecomLoaderService$3;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get4(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get5(Lcom/android/server/telecom/TelecomLoaderService;)Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    move-result-object v2

    if-nez v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v2

    if-nez v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    invoke-static {v2, v4}, Lcom/android/server/telecom/TelecomLoaderService;->-set1(Lcom/android/server/telecom/TelecomLoaderService;Landroid/util/IntArray;)Landroid/util/IntArray;

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get2(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 258
    return-object v5

    :cond_1
    monitor-exit v3

    .line 262
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$3;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "telecom"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 263
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 264
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v0, :cond_2

    .line 265
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    return-object v2

    .line 252
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 267
    .restart local v0    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .restart local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    return-object v5
.end method
