.class final Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final POLICY_REJECT_APP_NET_MOBILE:I = 0x2

.field private static final POLICY_REJECT_APP_NET_WIFI:I = 0x4

.field private static final RULE_REJECT_METERED_MOBILE:I = 0x2

.field private static final RULE_REJECT_METERED_WIFI:I = 0x4

.field private static final TOTAL_BYTES:Ljava/lang/String; = "totalBytes"

.field private static final TRAFFIC_DIALOG_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.TipActivity"

.field private static final TRAFFIC_DIALOG_PACKAGES_NAME:Ljava/lang/String; = "com.meizu.safe"

.field private static final TRAFFIC_MAINUI_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.MainActivity"

.field private static mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2504
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2506
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2507
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2508
    return-object v0
.end method

.method static buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "totalBytes"    # J

    .prologue
    .line 2514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2515
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2516
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2517
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2518
    const-string v1, "totalBytes"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2519
    const-string v1, "policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2520
    return-object v0
.end method

.method static buildFlymeViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2528
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.networkmanager.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2530
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2531
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2532
    return-object v0
.end method

.method static flymeChangeUidRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I
    .locals 3
    .param p0, "npms"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    .line 2536
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2537
    .local v0, "uidPolicy":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 2538
    or-int/lit8 p2, p2, 0x2

    .line 2542
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 2543
    or-int/lit8 p2, p2, 0x4

    .line 2545
    :cond_1
    return p2
.end method

.method static setSmallIcon(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p0, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2616
    sget v0, Lcom/flyme/internal/R$drawable;->mz_stat_sys_traffic_warn:I

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 2617
    return-void
.end method

.method static updateRulesForUidWifiAndMobileLocked(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 11
    .param p0, "npms"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "uidPolicy"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2550
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeInvokeMethodIsUidValidForRules(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2612
    :cond_0
    :goto_0
    return-void

    .line 2552
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v2

    .line 2553
    .local v2, "lastUidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v5

    .line 2556
    .local v5, "uidForeground":Z
    const/4 v6, 0x0

    .line 2557
    .local v6, "uidRules":I
    if-nez v5, :cond_2

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_2

    .line 2559
    or-int/lit8 v6, v6, 0x1

    .line 2561
    :cond_2
    if-nez v5, :cond_3

    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v9, :cond_3

    .line 2563
    or-int/lit8 v6, v6, 0x1

    .line 2566
    :cond_3
    and-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_4

    .line 2567
    or-int/lit8 v6, v6, 0x2

    .line 2570
    :cond_4
    and-int/lit8 v9, p2, 0x4

    if-eqz v9, :cond_5

    .line 2571
    or-int/lit8 v6, v6, 0x4

    .line 2578
    :cond_5
    const/4 v3, 0x0

    .line 2579
    .local v3, "policy3gChanged":Z
    const/4 v4, 0x0

    .line 2580
    .local v4, "policyWifiChanged":Z
    and-int/lit8 v9, v2, 0x2

    and-int/lit8 v10, p2, 0x2

    xor-int/2addr v9, v10

    if-eqz v9, :cond_8

    move v3, v7

    .line 2581
    :goto_1
    and-int/lit8 v9, v2, 0x4

    and-int/lit8 v10, p2, 0x4

    xor-int/2addr v9, v10

    if-eqz v9, :cond_9

    move v4, v7

    .line 2583
    :goto_2
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v9, :cond_6

    .line 2584
    const-string v9, "networkmanagement_service_flyme"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/INetworkManagementServiceFlyme$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceFlyme;

    move-result-object v9

    sput-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    .line 2586
    :cond_6
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-eqz v9, :cond_0

    .line 2590
    if-eqz v3, :cond_7

    .line 2591
    and-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_a

    move v0, v7

    .line 2595
    .local v0, "allowNet3g":Z
    :goto_3
    :try_start_0
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v10, 0x0

    invoke-interface {v9, p1, v10, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2601
    .end local v0    # "allowNet3g":Z
    :cond_7
    :goto_4
    if-eqz v4, :cond_0

    .line 2602
    and-int/lit8 v9, v6, 0x4

    if-nez v9, :cond_b

    move v1, v7

    .line 2606
    .local v1, "allowNetWifi":Z
    :goto_5
    :try_start_1
    sget-object v7, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v8, 0x1

    invoke-interface {v7, p1, v8, v1}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2608
    :catch_0
    move-exception v7

    goto :goto_0

    .end local v1    # "allowNetWifi":Z
    :cond_8
    move v3, v8

    .line 2580
    goto :goto_1

    :cond_9
    move v4, v8

    .line 2581
    goto :goto_2

    :cond_a
    move v0, v8

    .line 2591
    goto :goto_3

    :cond_b
    move v1, v8

    .line 2602
    goto :goto_5

    .line 2609
    .restart local v1    # "allowNetWifi":Z
    :catch_1
    move-exception v7

    goto :goto_0

    .line 2598
    .end local v1    # "allowNetWifi":Z
    .restart local v0    # "allowNet3g":Z
    :catch_2
    move-exception v9

    goto :goto_4

    .line 2597
    :catch_3
    move-exception v9

    goto :goto_4
.end method
