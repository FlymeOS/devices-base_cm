.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

.field private mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

.field private final mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

.field private mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

.field private mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

.field private mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

.field private final mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private final mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPendingReformGroupIndication:Z

.field private mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

.field private mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

.field private mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "p2pSupported"    # Z

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 547
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 490
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    .line 491
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    .line 492
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    .line 493
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    .line 494
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    .line 495
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    .line 497
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    .line 498
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    .line 499
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    .line 501
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    .line 503
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    .line 504
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    .line 505
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    .line 507
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    .line 508
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    .line 509
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    .line 511
    new-instance v0, Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 512
    new-instance v0, Lcom/android/server/wifi/WifiMonitor;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 514
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 523
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 524
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 534
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPendingReformGroupIndication:Z

    .line 541
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 556
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 557
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 559
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 560
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 564
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 566
    if-eqz p4, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 571
    :goto_0
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogRecSize(I)V

    .line 572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogOnlyTransitions(Z)V

    .line 573
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupRemoved()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$13100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMiracastModeChanged(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 488
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPendingReformGroupIndication:Z

    return v0
.end method

.method static synthetic access$9302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPendingReformGroupIndication:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    return-object v0
.end method

.method private addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3108
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    .line 3109
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 3110
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 3123
    :cond_0
    :goto_0
    return v1

    .line 3114
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3118
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3119
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3123
    goto :goto_0
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "stringId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2355
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2356
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900f0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2358
    .local v1, "row":Landroid/view/View;
    const v2, 0x10203da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2359
    const v2, 0x1020317

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2360
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2361
    return-void
.end method

.method private addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    const/4 v1, 0x1

    .line 3032
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    .line 3033
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 3034
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 3035
    const/4 v1, 0x0

    .line 3048
    :cond_0
    :goto_0
    return v1

    .line 3038
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # ++operator for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13504(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    .line 3040
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # ++operator for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13504(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    .line 3041
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->setTransactionId(I)V

    .line 3042
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3044
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3048
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v1

    goto :goto_0
.end method

.method private clearClientDeadChannels()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3198
    .local v1, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 3199
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 3200
    .local v5, "msg":Landroid/os/Message;
    const v6, 0x22031

    iput v6, v5, Landroid/os/Message;->what:I

    .line 3201
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 3202
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 3203
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3205
    :try_start_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3206
    :catch_0
    move-exception v2

    .line 3207
    .local v2, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "detect dead channel"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3208
    :cond_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3212
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 3213
    .local v4, "m":Landroid/os/Messenger;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    goto :goto_1

    .line 3215
    .end local v4    # "m":Landroid/os/Messenger;
    :cond_2
    return-void
.end method

.method private clearClientInfo(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 3159
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    .line 3160
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    .line 3161
    return-void
.end method

.method private clearLocalServices(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 3142
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 3143
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 3156
    :cond_0
    :goto_0
    return-void

    .line 3147
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 3148
    .local v2, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    goto :goto_1

    .line 3151
    .end local v2    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :cond_2
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3152
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 3153
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3154
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private clearServiceRequests(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 3084
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 3085
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 3105
    :cond_0
    :goto_0
    return-void

    .line 3089
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3093
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3095
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 3096
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "remove channel information from framework"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3097
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3104
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0
.end method

.method private clearSupplicantServiceRequest()V
    .locals 2

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3026
    :goto_0
    return-void

    .line 3024
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->p2pServDiscCancelReq(Ljava/lang/String;)Z

    .line 3025
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 2582
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v0

    .line 2583
    .local v0, "gc":I
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 2584
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    return-object v1
.end method

.method private getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "createIfNotExist"    # Z

    .prologue
    .line 3225
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 3227
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 3228
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "add a new client"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3229
    :cond_0
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .end local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;)V

    .line 3230
    .restart local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3233
    :cond_1
    return-object v0
.end method

.method private getClientList(I)[Ljava/lang/String;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 2708
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "p2p_client_list"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2709
    .local v0, "p2pClients":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2710
    const/4 v1, 0x0

    .line 2712
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2771
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2772
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 2773
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2774
    .local v1, "deviceName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2780
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 2777
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local p1    # "deviceAddress":Ljava/lang/String;
    :cond_1
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNetworkIdFromClientList(Ljava/lang/String;)I
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 2686
    if-nez p1, :cond_1

    move v7, v9

    .line 2699
    :cond_0
    :goto_0
    return v7

    .line 2688
    :cond_1
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v3

    .line 2689
    .local v3, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2690
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v7

    .line 2691
    .local v7, "netId":I
    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v8

    .line 2692
    .local v8, "p2pClientList":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 2693
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 2694
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2693
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "netId":I
    .end local v8    # "p2pClientList":[Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 2699
    goto :goto_0
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x104008b

    .line 2784
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2786
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2787
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2789
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2797
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2793
    .restart local v0    # "deviceName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2795
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleGroupCreationFailure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2876
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()V

    .line 2877
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    .line 2882
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v0

    .line 2883
    .local v0, "peersChanged":Z
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2885
    const/4 v0, 0x1

    .line 2887
    :cond_0
    if-eqz v0, :cond_1

    .line 2888
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 2891
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 2892
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 2893
    const v1, 0x22001

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 2894
    return-void
.end method

.method private handleGroupRemoved()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2897
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2898
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->stopDhcpServer(Ljava/lang/String;)V

    .line 2914
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2918
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 2922
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 2924
    const/4 v4, 0x0

    .line 2927
    .local v4, "peersChanged":Z
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2928
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    .line 2900
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "peersChanged":Z
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "stop DHCP client"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2901
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$9700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    const v6, 0x30002

    invoke-virtual {v5, v6}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2902
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$9700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 2903
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$9702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 2905
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2906
    :catch_0
    move-exception v1

    .line 2907
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove iface from local network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2908
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 2909
    .local v3, "ie":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove iface from local network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2915
    .end local v3    # "ie":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 2916
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clear addresses "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2930
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "peersChanged":Z
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    .line 2931
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    .line 2932
    :cond_5
    if-eqz v4, :cond_6

    .line 2933
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 2936
    :cond_6
    iput-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2937
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 2938
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v5, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 2940
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2941
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x2300c

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2942
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v5, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2944
    :cond_7
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 4

    .prologue
    .line 2839
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setPersistentReconnect(Z)Z

    .line 2840
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2841
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 2843
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 2844
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 2847
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "virtual_push_button physical_display keypad"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    .line 2849
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "sta"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConcurrencyPriority(Ljava/lang/String;)Z

    .line 2851
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2852
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    .line 2853
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2855
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2856
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    .line 2857
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pServiceFlush()Z

    .line 2858
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B

    .line 2859
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 2861
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2863
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2864
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v1

    const v2, 0x23010

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2867
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13300()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    .line 2868
    return-void
.end method

.method private isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v0, 0x1

    .line 2570
    if-nez p1, :cond_1

    .line 2573
    :cond_0
    :goto_0
    return v0

    .line 2571
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2572
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2573
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyInvitationReceived()V
    .locals 9

    .prologue
    .line 2413
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2414
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v5, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 2415
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900ef

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2418
    .local v4, "textEntryView":Landroid/view/View;
    const v6, 0x102034a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2419
    .local v1, "group":Landroid/view/ViewGroup;
    const v6, 0x104059f

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2422
    const v6, 0x10203d9

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2424
    .local v2, "pin":Landroid/widget/EditText;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x104059e

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104059b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;

    invoke-direct {v8, p0, v5, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104059c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2453
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 2466
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 2469
    new-instance v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$6;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$6;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2486
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2487
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2488
    return-void

    .line 2455
    :pswitch_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Enter pin section visible"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2456
    :cond_1
    const v6, 0x10203d8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2459
    :pswitch_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Shown pin section visible"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2460
    :cond_2
    const v6, 0x10405a2

    iget-object v7, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_0

    .line 2453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2364
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2366
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10900ef

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2369
    .local v3, "textEntryView":Landroid/view/View;
    const v4, 0x102034a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2370
    .local v1, "group":Landroid/view/ViewGroup;
    const v4, 0x10405a0

    invoke-direct {p0, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2371
    const v4, 0x10405a2

    invoke-direct {p0, v1, v4, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2373
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x104059d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2378
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2379
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2380
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 5

    .prologue
    .line 2344
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2345
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040596

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040598

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2350
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2351
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2352
    return-void
.end method

.method private notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    .line 2383
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2384
    .local v2, "r":Landroid/content/res/Resources;
    move-object v3, p2

    .line 2385
    .local v3, "tempDevAddress":Ljava/lang/String;
    move-object v4, p1

    .line 2387
    .local v4, "tempPin":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900ef

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2390
    .local v5, "textEntryView":Landroid/view/View;
    const v6, 0x102034a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2391
    .local v1, "group":Landroid/view/ViewGroup;
    const v6, 0x10405a0

    invoke-direct {p0, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2392
    const v6, 0x10405a2

    invoke-direct {p0, v1, v6, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2394
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x104059d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104059b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;

    invoke-direct {v8, p0, v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2408
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2409
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2410
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 2974
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2975
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2976
    return-object v0
.end method

.method private p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 2592
    const/4 v1, 0x0

    .line 2593
    .local v1, "join":Z
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2595
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsInvite:Z
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2596
    const/4 v1, 0x1

    .line 2601
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v2

    .line 2603
    .local v2, "pin":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2604
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mIsInvite:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2609
    return-void

    .line 2598
    .end local v2    # "pin":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    goto :goto_0

    .line 2605
    .restart local v2    # "pin":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2618
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2620
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    .line 2621
    .local v1, "join":Z
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2622
    .local v3, "ssid":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target ssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " join:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2624
    :cond_0
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupLimit()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2625
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "target device reaches group limit."

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2629
    :cond_1
    const/4 v1, 0x0

    .line 2641
    :cond_2
    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isDeviceLimit()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2642
    const-string v5, "target device reaches the device limit."

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2673
    :cond_3
    :goto_0
    return v4

    .line 2630
    :cond_4
    if-eqz v1, :cond_2

    .line 2631
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2632
    .local v2, "netId":I
    if-ltz v2, :cond_2

    .line 2634
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    .line 2637
    goto :goto_0

    .line 2646
    .end local v2    # "netId":I
    :cond_5
    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2647
    const/4 v2, -0x2

    .line 2648
    .restart local v2    # "netId":I
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    if-ltz v6, :cond_9

    .line 2649
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget v8, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2650
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2655
    :cond_6
    :goto_1
    if-gez v2, :cond_7

    .line 2656
    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getNetworkIdFromClientList(Ljava/lang/String;)I

    move-result v2

    .line 2658
    :cond_7
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netId related with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2659
    :cond_8
    if-ltz v2, :cond_3

    .line 2661
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2663
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    move v4, v5

    .line 2664
    goto :goto_0

    .line 2653
    :cond_9
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 2666
    :cond_a
    const-string v5, "p2pReinvoke() failed, update networks"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2667
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13300()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    goto/16 :goto_0
.end method

.method private removeClientFromList(ILjava/lang/String;Z)Z
    .locals 11
    .param p1, "netId"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isRemovable"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2723
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2724
    .local v6, "modifiedClientList":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v2

    .line 2725
    .local v2, "currentClientList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2726
    .local v4, "isClientRemoved":Z
    if-eqz v2, :cond_1

    .line 2727
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 2728
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2729
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2730
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2727
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2732
    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    .line 2736
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_3

    if-eqz p3, :cond_3

    .line 2738
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "Remove unknown network"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2739
    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v8, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 2755
    :goto_2
    return v7

    .line 2743
    :cond_3
    if-nez v4, :cond_4

    .line 2745
    const/4 v7, 0x0

    goto :goto_2

    .line 2748
    :cond_4
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Modified client list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2749
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 2750
    const-string v8, "\"\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "p2p_client_list"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 2754
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_2
.end method

.method private removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 3127
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 3128
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 3139
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    .line 3134
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3135
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3136
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "remove client information from framework"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3137
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 3052
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 3053
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 3080
    :cond_0
    :goto_0
    return-void

    .line 3059
    :cond_1
    const/4 v2, 0x0

    .line 3060
    .local v2, "removed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3061
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3062
    const/4 v2, 0x1

    .line 3063
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3068
    :cond_2
    if-eqz v2, :cond_0

    .line 3070
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 3071
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3072
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3079
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0

    .line 3060
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 2949
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2953
    :goto_0
    return-void

    .line 2950
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2951
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2952
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 2956
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2961
    :goto_0
    return-void

    .line 2957
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2958
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2959
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2960
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2964
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2969
    :goto_0
    return-void

    .line 2965
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2966
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2967
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2968
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetWifiP2pInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2765
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2766
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2767
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2768
    return-void
.end method

.method private sendMiracastModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x23011

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2289
    return-void
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 5

    .prologue
    .line 2274
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sending p2p connection changed broadcast"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2275
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2276
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2278
    const-string v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2279
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2280
    const-string v1, "p2pGroupInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2281
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2282
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300b

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2284
    return-void
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 2246
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2257
    :goto_0
    return-void

    .line 2247
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z
    invoke-static {v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2249
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discovery change broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2251
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2253
    const-string v2, "discoveryState"

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2256
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2253
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private sendP2pPersistentGroupsChangedBroadcast()V
    .locals 3

    .prologue
    .line 2292
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sending p2p persistent groups changed broadcast"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2293
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2295
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2296
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2234
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2235
    if-eqz p1, :cond_0

    .line 2236
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2242
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2243
    return-void

    .line 2239
    :cond_0
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendPeersChangedBroadcast()V
    .locals 4

    .prologue
    .line 2267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2268
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifiP2pDeviceList"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2269
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2270
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2271
    return-void
.end method

.method private sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 8
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    const/4 v7, 0x0

    .line 3169
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 3170
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getTransactionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 3171
    .local v4, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v4, :cond_0

    .line 3172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 3173
    .local v3, "msg":Landroid/os/Message;
    const v5, 0x22032

    iput v5, v3, Landroid/os/Message;->what:I

    .line 3174
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 3175
    iput v7, v3, Landroid/os/Message;->arg2:I

    .line 3176
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3178
    :try_start_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3179
    :catch_0
    move-exception v1

    .line 3180
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "detect dead channel"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3181
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    .line 3186
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    return-void
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    .prologue
    .line 2260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2261
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2262
    const-string v1, "wifiP2pDevice"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2263
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2264
    return-void
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2801
    if-nez p1, :cond_0

    .line 2814
    :goto_0
    return v0

    .line 2803
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2808
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2809
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 2811
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2813
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 2814
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 5
    .param p1, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2820
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2821
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v0

    .line 2828
    .local v0, "success":Z
    :goto_0
    if-nez v0, :cond_2

    .line 2829
    const-string v1, "Failed to set wfd properties"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2835
    :goto_1
    return v2

    .line 2823
    .end local v0    # "success":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceInfoHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setWfdDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .restart local v0    # "success":Z
    :goto_2
    goto :goto_0

    .end local v0    # "success":Z
    :cond_1
    move v0, v2

    goto :goto_2

    .line 2833
    .restart local v0    # "success":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iput-object p1, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 2834
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    move v2, v1

    .line 2835
    goto :goto_1
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "serverInetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2760
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2761
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2762
    return-void
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 2299
    const/4 v2, 0x0

    .line 2301
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 2302
    new-instance v4, Landroid/net/LinkAddress;

    const-string v5, "192.168.49.1"

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 2304
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 2305
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 2307
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2309
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v3

    .line 2310
    .local v3, "tetheringDhcpRanges":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isTetheringStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2311
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Stop existing tethering and restart it"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2312
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 2314
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V

    .line 2315
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started Dhcp server on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2322
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "tetheringDhcpRanges":[Ljava/lang/String;
    :goto_0
    return-void

    .line 2316
    :catch_0
    move-exception v1

    .line 2317
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error configuring interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 2326
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 2327
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 2328
    .local v4, "temp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List all interfaces "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2330
    const-string v5, "Found other tethering interfaces, so keep tethering alive"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2339
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2341
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "temp":Ljava/lang/String;
    :goto_1
    return-void

    .line 2327
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2334
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2339
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2335
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v1

    .line 2336
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error stopping Dhcp server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2339
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const-string v6, "Stopped Dhcp server"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    throw v5
.end method

.method private updatePersistentNetworks(Z)V
    .locals 15
    .param p1, "reload"    # Z

    .prologue
    .line 2495
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v8

    .line 2496
    .local v8, "listStr":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 2562
    :cond_0
    :goto_0
    return-void

    .line 2498
    :cond_1
    const/4 v6, 0x0

    .line 2499
    .local v6, "isSaveRequired":Z
    const-string v13, "\n"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2500
    .local v7, "lines":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2502
    if-eqz p1, :cond_2

    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    .line 2505
    :cond_2
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_9

    .line 2506
    aget-object v13, v7, v5

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2507
    .local v11, "result":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v13, v11

    const/4 v14, 0x4

    if-ge v13, v14, :cond_4

    .line 2505
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2511
    :cond_4
    const/4 v10, -0x1

    .line 2512
    .local v10, "netId":I
    const/4 v13, 0x1

    aget-object v12, v11, v13

    .line 2513
    .local v12, "ssid":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v0, v11, v13

    .line 2514
    .local v0, "bssid":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v3, v11, v13

    .line 2516
    .local v3, "flags":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2522
    const-string v13, "[CURRENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 2525
    const-string v13, "[P2P-PERSISTENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 2530
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$200()Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clean up the unused persistent group. netId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2531
    :cond_5
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13, v10}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    .line 2532
    const/4 v6, 0x1

    .line 2533
    goto :goto_2

    .line 2517
    :catch_0
    move-exception v2

    .line 2518
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 2536
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->contains(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 2540
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 2541
    .local v4, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 2542
    invoke-virtual {v4, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 2543
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v14, "mode"

    invoke-virtual {v13, v10, v14}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2544
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_7

    const-string v13, "3"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2545
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 2547
    :cond_7
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2548
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2554
    :goto_3
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v4}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 2555
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 2550
    :cond_8
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 2551
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2552
    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 2558
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "flags":Ljava/lang/String;
    .end local v4    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "netId":I
    .end local v11    # "result":[Ljava/lang/String;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_9
    if-nez p1, :cond_a

    if-eqz v6, :cond_0

    .line 2559
    :cond_a
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 2560
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    goto/16 :goto_0
.end method

.method private updateSupplicantServiceRequest()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2993
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    .line 2995
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2996
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 2999
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 3000
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 3001
    .local v3, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v3, :cond_1

    .line 3002
    invoke-virtual {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getSupplicantQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2999
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3007
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v1    # "i":I
    .end local v3    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 3015
    :cond_3
    :goto_1
    return v5

    .line 3011
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiNative;->p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 3012
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 3015
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateThisDevice(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 2872
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 2873
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2224
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiP2pInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedPeerConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedP2pGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2230
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2981
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2986
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    return-void
.end method
