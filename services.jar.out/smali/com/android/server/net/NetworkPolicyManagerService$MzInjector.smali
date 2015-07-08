.class Lcom/android/server/net/NetworkPolicyManagerService$MzInjector;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MzInjector"
.end annotation


# static fields
.field private static mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2368
    const-string v0, "networkmanagement_service_flyme"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementServiceFlyme$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceFlyme;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$MzInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    .line 2370
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "totalBytes"    # J

    .prologue
    .line 2417
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2418
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.safe.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2419
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2420
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2421
    const-string v1, "totalBytes"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2422
    const-string v1, "policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2423
    return-object v0
.end method

.method static flymeChangeUidRules(II)I
    .locals 1
    .param p0, "uidRules"    # I
    .param p1, "uidPolicy"    # I

    .prologue
    .line 2373
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 2374
    or-int/lit8 p0, p0, 0x2

    .line 2378
    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    .line 2379
    or-int/lit8 p0, p0, 0x4

    .line 2382
    :cond_1
    return p0
.end method

.method static hookEnqueueNotification(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/app/Notification$Builder;Landroid/net/NetworkPolicy;IJ)V
    .locals 6
    .param p0, "target"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .param p3, "type"    # I
    .param p4, "totalBytes"    # J

    .prologue
    const/high16 v4, 0x8000000

    const/4 v3, 0x0

    .line 2387
    packed-switch p3, :pswitch_data_0

    .line 2408
    :goto_0
    :pswitch_0
    iget-object v2, p2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2, p2, p4, p5}, Lcom/android/server/net/NetworkPolicyManagerService$MzInjector;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;

    move-result-object v1

    .line 2409
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2411
    sget v2, Lcom/flyme/internal/R$drawable;->mz_stat_sys_traffic_warn:I

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2412
    return-void

    .line 2389
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.action.USER_DELETE_SNOOZED_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2390
    .local v0, "deleteIntent":Landroid/content/Intent;
    const-string v2, "android.net.NETWORK_POLICY"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2391
    const-string v2, "android.net.TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2392
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 2398
    .end local v0    # "deleteIntent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.action.USER_DELETE_SNOOZED_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2399
    .restart local v0    # "deleteIntent":Landroid/content/Intent;
    const-string v2, "android.net.NETWORK_POLICY"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2400
    const-string v2, "android.net.TYPE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2401
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 2387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static updateRulesForUidWifiAndMobileLocked(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 12
    .param p0, "target"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "uidPolicy"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2436
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->mzInvokeMethodIsUidValidForRules(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2502
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v3

    .line 2439
    .local v3, "lastUidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v6

    .line 2442
    .local v6, "uidForeground":Z
    const/4 v7, 0x0

    .line 2443
    .local v7, "uidRules":I
    if-nez v6, :cond_2

    and-int/lit8 v10, p2, 0x1

    if-eqz v10, :cond_2

    .line 2445
    or-int/lit8 v7, v7, 0x1

    .line 2447
    :cond_2
    if-nez v6, :cond_3

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_3

    .line 2449
    or-int/lit8 v7, v7, 0x1

    .line 2452
    :cond_3
    and-int/lit8 v10, p2, 0x2

    if-eqz v10, :cond_4

    .line 2453
    or-int/lit8 v7, v7, 0x2

    .line 2456
    :cond_4
    and-int/lit8 v10, p2, 0x4

    if-eqz v10, :cond_5

    .line 2457
    or-int/lit8 v7, v7, 0x4

    .line 2464
    :cond_5
    const/4 v4, 0x0

    .line 2465
    .local v4, "policy3gChanged":Z
    const/4 v5, 0x0

    .line 2466
    .local v5, "policyWifiChanged":Z
    and-int/lit8 v10, v3, 0x2

    and-int/lit8 v11, p2, 0x2

    xor-int/2addr v10, v11

    if-eqz v10, :cond_6

    move v4, v8

    .line 2468
    :goto_1
    and-int/lit8 v10, v3, 0x4

    and-int/lit8 v11, p2, 0x4

    xor-int/2addr v10, v11

    if-eqz v10, :cond_7

    move v5, v8

    .line 2471
    :goto_2
    sget-object v10, Lcom/android/server/net/NetworkPolicyManagerService$MzInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v10, :cond_8

    .line 2472
    const-string v8, "NetworkPolicy"

    const-string v9, "Can not get Flyme network manager!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v4, v9

    .line 2466
    goto :goto_1

    :cond_7
    move v5, v9

    .line 2468
    goto :goto_2

    .line 2476
    :cond_8
    if-eqz v4, :cond_9

    .line 2477
    and-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_a

    move v0, v8

    .line 2481
    .local v0, "allowNet3g":Z
    :goto_3
    :try_start_0
    sget-object v10, Lcom/android/server/net/NetworkPolicyManagerService$MzInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v11, 0x0

    invoke-interface {v10, p1, v11, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2489
    .end local v0    # "allowNet3g":Z
    :cond_9
    :goto_4
    if-eqz v5, :cond_0

    .line 2490
    and-int/lit8 v10, v7, 0x4

    if-nez v10, :cond_b

    move v1, v8

    .line 2494
    .local v1, "allowNetWifi":Z
    :goto_5
    :try_start_1
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService$MzInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v9, 0x1

    invoke-interface {v8, p1, v9, v1}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 2496
    :catch_0
    move-exception v2

    .line 2497
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "allowNetWifi":Z
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_a
    move v0, v9

    .line 2477
    goto :goto_3

    .line 2483
    .restart local v0    # "allowNet3g":Z
    :catch_1
    move-exception v2

    .line 2484
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .line 2485
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 2486
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .end local v0    # "allowNet3g":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    move v1, v9

    .line 2490
    goto :goto_5

    .line 2498
    .restart local v1    # "allowNetWifi":Z
    :catch_3
    move-exception v2

    .line 2499
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
