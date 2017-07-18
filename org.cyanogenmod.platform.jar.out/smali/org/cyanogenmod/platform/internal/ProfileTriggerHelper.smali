.class public Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;
.super Landroid/content/BroadcastReceiver;
.source "ProfileTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileTriggerHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilterRegistered:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastConnectedSSID:Ljava/lang/String;

.field private mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/cyanogenmod/platform/internal/ProfileManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "profileManagerService"    # Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 56
    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 72
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    .line 74
    new-instance v0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;

    invoke-direct {v0, p0, p2}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper$SettingsObserver;-><init>(Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 76
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    .line 80
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->updateEnabled()V

    .line 86
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "system_profiles_enabled"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 86
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method private checkTriggers(ILjava/lang/String;I)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 151
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v12}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getActiveProfileInternal()Lcyanogenmod/app/Profile;

    move-result-object v1

    .line 152
    .local v1, "activeProfile":Lcyanogenmod/app/Profile;
    invoke-virtual {v1}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    .line 154
    .local v2, "currentProfileUuid":Ljava/util/UUID;
    const/4 v4, 0x0

    .line 155
    .local v4, "newProfileSelected":Z
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    invoke-virtual {v12}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "p$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/app/Profile;

    .line 156
    .local v5, "p":Lcyanogenmod/app/Profile;
    move-object/from16 v0, p2

    invoke-virtual {v5, p1, v0}, Lcyanogenmod/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v7

    .line 157
    .local v7, "profileTriggerState":I
    move/from16 v0, p3

    if-ne v0, v7, :cond_0

    .line 161
    invoke-virtual {v5}, Lcyanogenmod/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 162
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mManagerService:Lorg/cyanogenmod/platform/internal/ProfileManagerService;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v13}, Lorg/cyanogenmod/platform/internal/ProfileManagerService;->setActiveProfileInternal(Lcyanogenmod/app/Profile;Z)V

    .line 163
    const/4 v4, 0x1

    goto :goto_0

    .line 167
    .end local v5    # "p":Lcyanogenmod/app/Profile;
    .end local v7    # "profileTriggerState":I
    :cond_1
    if-nez v4, :cond_3

    .line 169
    invoke-virtual {v1, p1}, Lcyanogenmod/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "trigger$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcyanogenmod/app/Profile$ProfileTrigger;

    .line 170
    .local v8, "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    invoke-virtual {v8}, Lcyanogenmod/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "triggerID":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 173
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v12, "cyanogenmod.platform.intent.action.INTENT_ACTION_PROFILE_TRIGGER_STATE_CHANGED"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "trigger_id"

    move-object/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v12, "trigger_type"

    invoke-virtual {v3, v12, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    const-string/jumbo v12, "trigger_state"

    move/from16 v0, p3

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v3, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 179
    invoke-virtual {v8}, Lcyanogenmod/app/Profile$ProfileTrigger;->getState()I

    move-result v11

    .line 180
    .local v11, "triggerState":I
    if-nez p3, :cond_4

    .line 181
    if-nez v11, :cond_4

    .line 184
    :goto_1
    iget-object v12, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lcyanogenmod/app/Profile;->doSelect(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    .line 150
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    .end local v9    # "trigger$iterator":Ljava/util/Iterator;
    .end local v10    # "triggerID":Ljava/lang/String;
    .end local v11    # "triggerState":I
    :cond_3
    return-void

    .line 182
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "trigger":Lcyanogenmod/app/Profile$ProfileTrigger;
    .restart local v9    # "trigger$iterator":Ljava/util/Iterator;
    .restart local v10    # "triggerID":Ljava/lang/String;
    .restart local v11    # "triggerState":I
    :cond_4
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_3

    .line 183
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    goto :goto_1
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 195
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    .line 196
    return-object v3

    .line 198
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 199
    .local v0, "ssid":Landroid/net/wifi/WifiSsid;
    if-nez v0, :cond_1

    .line 200
    return-object v3

    .line 202
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "wifiInfo"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    .line 112
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_1

    .line 113
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 117
    const-string/jumbo v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 120
    :cond_0
    const-string/jumbo v6, "<unknown ssid>"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v7, v6, v8}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    .line 123
    const-string/jumbo v6, "<unknown ssid>"

    iput-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 106
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    :goto_0
    return-void

    .line 124
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "ssid":Ljava/lang/String;
    .restart local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    .line 126
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mLastConnectedSSID:Ljava/lang/String;

    invoke-direct {p0, v7, v6, v7}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .line 131
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string/jumbo v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 132
    const-string/jumbo v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 131
    if-eqz v6, :cond_1

    .line 133
    :cond_4
    const-string/jumbo v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    const/4 v4, 0x0

    .line 135
    .local v4, "triggerState":I
    :goto_1
    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 137
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6, v4}, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->checkTriggers(ILjava/lang/String;I)V

    goto :goto_0

    .line 134
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "triggerState":I
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "triggerState":I
    goto :goto_1
.end method

.method public updateEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 92
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "system_profiles_enabled"

    .line 92
    invoke-static {v1, v2, v3}, Lcyanogenmod/providers/CMSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    .line 94
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    if-eqz v1, :cond_3

    .line 98
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    if-eqz v1, :cond_1

    .line 99
    const-string/jumbo v1, "ProfileTriggerHelper"

    const-string/jumbo v2, "Disabling"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    .line 91
    :cond_1
    :goto_1
    return-void

    .line 92
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 95
    :cond_3
    const-string/jumbo v1, "ProfileTriggerHelper"

    const-string/jumbo v2, "Enabling"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/ProfileTriggerHelper;->mFilterRegistered:Z

    goto :goto_1
.end method
