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
.field private static final TOTAL_BYTES:Ljava/lang/String; = "totalBytes"

.field private static final TRAFFIC_DIALOG_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.TipActivity"

.field private static final TRAFFIC_DIALOG_PACKAGES_NAME:Ljava/lang/String; = "com.meizu.safe"

.field private static final TRAFFIC_MAINUI_CLASS_NAME:Ljava/lang/String; = "com.meizu.networkmanager.MainActivity"

.field private static mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2863
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2866
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.safe"

    const-string/jumbo v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2868
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2869
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2870
    return-object v0
.end method

.method static buildFlymeNetworkOverLimitIntent(Landroid/net/NetworkTemplate;Landroid/net/NetworkPolicy;J)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "totalBytes"    # J

    .prologue
    .line 2876
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2877
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.safe"

    const-string/jumbo v3, "com.meizu.networkmanager.TipActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2878
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2879
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2880
    const-string/jumbo v1, "totalBytes"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2881
    const-string/jumbo v1, "policy"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2882
    return-object v0
.end method

.method static buildFlymeViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2887
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2890
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.meizu.safe"

    const-string/jumbo v3, "com.meizu.networkmanager.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2892
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2893
    const-string/jumbo v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2894
    return-object v0
.end method

.method static flymeChangeUidRules(Lcom/android/server/net/NetworkPolicyManagerService;II)I
    .locals 10
    .param p0, "npms"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .prologue
    const/4 v9, 0x0

    .line 2898
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 2899
    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v6

    .line 2900
    .local v6, "uidForeground":Z
    and-int/lit16 v8, v7, 0x400

    if-eqz v8, :cond_0

    .line 2901
    or-int/lit16 p2, p2, 0x400

    .line 2905
    :cond_0
    and-int/lit16 v8, v7, 0x200

    if-eqz v8, :cond_1

    .line 2906
    or-int/lit16 p2, p2, 0x200

    .line 2910
    :cond_1
    if-nez v6, :cond_2

    and-int/lit16 v8, v7, 0x100

    if-eqz v8, :cond_2

    .line 2911
    or-int/lit16 p2, p2, 0x100

    .line 2913
    :cond_2
    if-nez v6, :cond_3

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_3

    .line 2914
    or-int/lit16 p2, p2, 0x80

    .line 2916
    :cond_3
    const/4 v4, 0x0

    .line 2917
    .local v4, "rule3gBackgroundChanged":Z
    const/4 v5, 0x0

    .line 2918
    .local v5, "ruleWifiBackgroundChanged":Z
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2920
    .local v3, "oldRules":I
    and-int/lit16 v8, v3, 0x100

    .line 2921
    and-int/lit16 v9, p2, 0x100

    .line 2920
    xor-int/2addr v8, v9

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    .line 2922
    :goto_0
    and-int/lit16 v8, v3, 0x80

    .line 2923
    and-int/lit16 v9, p2, 0x80

    .line 2922
    xor-int/2addr v8, v9

    if-eqz v8, :cond_7

    const/4 v5, 0x1

    .line 2924
    :goto_1
    if-eqz v4, :cond_4

    .line 2925
    and-int/lit16 v8, p2, 0x100

    if-nez v8, :cond_8

    const/4 v0, 0x1

    .line 2927
    .local v0, "allow":Z
    :goto_2
    :try_start_0
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v9, 0x0

    invoke-interface {v8, p1, v9, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2932
    .end local v0    # "allow":Z
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .line 2933
    and-int/lit16 v8, p2, 0x80

    if-nez v8, :cond_9

    const/4 v0, 0x1

    .line 2935
    .restart local v0    # "allow":Z
    :goto_4
    :try_start_1
    sget-object v8, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v9, 0x1

    invoke-interface {v8, p1, v9, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2941
    .end local v0    # "allow":Z
    :cond_5
    :goto_5
    return p2

    .line 2920
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 2922
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 2925
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_2

    .line 2933
    .end local v0    # "allow":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "allow":Z
    goto :goto_4

    .line 2936
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalStateException;
    goto :goto_5

    .line 2937
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_5

    .line 2928
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 2929
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method static updateRulesForUidWifiAndMobileLocked(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 11
    .param p0, "npms"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "uid"    # I
    .param p2, "uidPolicy"    # I

    .prologue
    .line 2946
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->flymeInvokeMethodIsUidValidForRules(I)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 2948
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4

    .line 2949
    .local v4, "lastUidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForeground(I)Z

    move-result v7

    .line 2952
    .local v7, "uidForeground":Z
    const/4 v8, 0x0

    .line 2953
    .local v8, "uidRules":I
    if-nez v7, :cond_1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_1

    .line 2955
    const/4 v8, 0x1

    .line 2957
    :cond_1
    if-nez v7, :cond_2

    iget-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v9, :cond_2

    .line 2959
    or-int/lit8 v8, v8, 0x1

    .line 2962
    :cond_2
    and-int/lit16 v9, p2, 0x400

    if-eqz v9, :cond_3

    .line 2963
    or-int/lit16 v8, v8, 0x400

    .line 2966
    :cond_3
    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_4

    .line 2967
    or-int/lit16 v8, v8, 0x200

    .line 2974
    :cond_4
    const/4 v5, 0x0

    .line 2975
    .local v5, "policy3gChanged":Z
    const/4 v6, 0x0

    .line 2976
    .local v6, "policyWifiChanged":Z
    and-int/lit16 v9, v4, 0x400

    and-int/lit16 v10, p2, 0x400

    xor-int/2addr v9, v10

    if-eqz v9, :cond_6

    const/4 v5, 0x1

    .line 2977
    :goto_0
    and-int/lit16 v9, v4, 0x200

    and-int/lit16 v10, p2, 0x200

    xor-int/2addr v9, v10

    if-eqz v9, :cond_7

    const/4 v6, 0x1

    .line 2979
    :goto_1
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v9, :cond_5

    .line 2980
    const-string/jumbo v9, "networkmanagement_service_flyme"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/INetworkManagementServiceFlyme$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceFlyme;

    move-result-object v9

    sput-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    .line 2982
    :cond_5
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    if-nez v9, :cond_8

    .line 2983
    return-void

    .line 2976
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 2977
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 2986
    :cond_8
    if-eqz v5, :cond_9

    .line 2987
    and-int/lit16 v9, v8, 0x400

    if-nez v9, :cond_b

    const/4 v0, 0x1

    .line 2991
    .local v0, "allowNet3g":Z
    :goto_2
    :try_start_0
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v10, 0x0

    invoke-interface {v9, p1, v10, v0}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2997
    .end local v0    # "allowNet3g":Z
    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    .line 2998
    and-int/lit16 v9, v8, 0x200

    if-nez v9, :cond_c

    const/4 v1, 0x1

    .line 3002
    .local v1, "allowNetWifi":Z
    :goto_4
    :try_start_1
    sget-object v9, Lcom/android/server/net/NetworkPolicyManagerService$FlymeInjector;->mNetworkManagerFlyme:Landroid/os/INetworkManagementServiceFlyme;

    const/4 v10, 0x1

    invoke-interface {v9, p1, v10, v1}, Landroid/os/INetworkManagementServiceFlyme;->setFirewallUidChainRule(IIZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2945
    .end local v1    # "allowNetWifi":Z
    :cond_a
    :goto_5
    return-void

    .line 2987
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "allowNet3g":Z
    goto :goto_2

    .line 2998
    .end local v0    # "allowNet3g":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "allowNetWifi":Z
    goto :goto_4

    .line 3004
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalStateException;
    goto :goto_5

    .line 3005
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_5

    .line 2993
    .end local v1    # "allowNetWifi":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "allowNet3g":Z
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 2994
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
