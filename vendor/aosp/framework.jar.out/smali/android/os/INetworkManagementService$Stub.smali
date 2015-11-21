.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addIdleTimer:I = 0x33

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x52

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x48

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x4a

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addUpstreamV6Interface:I = 0x1e

.field static final TRANSACTION_addVpnUidRanges:I = 0x3d

.field static final TRANSACTION_allowProtect:I = 0x50

.field static final TRANSACTION_attachPppd:I = 0x21

.field static final TRANSACTION_clearDefaultNetId:I = 0x4c

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearPermission:I = 0x4f

.field static final TRANSACTION_createPhysicalNetwork:I = 0x45

.field static final TRANSACTION_createVirtualNetwork:I = 0x46

.field static final TRANSACTION_denyProtect:I = 0x51

.field static final TRANSACTION_detachPppd:I = 0x22

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x1d

.field static final TRANSACTION_enableIpv6:I = 0xb

.field static final TRANSACTION_enableNat:I = 0x1c

.field static final TRANSACTION_flushNetworkDnsCache:I = 0x36

.field static final TRANSACTION_getDnsForwarders:I = 0x1b

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x12

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x29

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x27

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x28

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2b

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x2a

.field static final TRANSACTION_getRoutes:I = 0xd

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x32

.field static final TRANSACTION_isClatdStarted:I = 0x41

.field static final TRANSACTION_isFirewallEnabled:I = 0x38

.field static final TRANSACTION_isNetworkActive:I = 0x44

.field static final TRANSACTION_isTetheringStarted:I = 0x16

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x19

.field static final TRANSACTION_listTtys:I = 0x20

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x42

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeIdleTimer:I = 0x34

.field static final TRANSACTION_removeInterfaceAlert:I = 0x2f

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x53

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x49

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2d

.field static final TRANSACTION_removeNetwork:I = 0x47

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeUpstreamV6Interface:I = 0x1f

.field static final TRANSACTION_removeVpnUidRanges:I = 0x3e

.field static final TRANSACTION_setAccessPoint:I = 0x26

.field static final TRANSACTION_setDefaultNetId:I = 0x4b

.field static final TRANSACTION_setDnsForwarders:I = 0x1a

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x35

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x3b

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x3a

.field static final TRANSACTION_setFirewallEnabled:I = 0x37

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x39

.field static final TRANSACTION_setFirewallUidRule:I = 0x3c

.field static final TRANSACTION_setGlobalAlert:I = 0x30

.field static final TRANSACTION_setInterfaceAlert:I = 0x2e

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xc

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x2c

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_setMtu:I = 0x10

.field static final TRANSACTION_setNetworkPermission:I = 0x4d

.field static final TRANSACTION_setPermission:I = 0x4e

.field static final TRANSACTION_setUidNetworkRules:I = 0x31

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startAccessPoint:I = 0x24

.field static final TRANSACTION_startClatd:I = 0x3f

.field static final TRANSACTION_startTethering:I = 0x14

.field static final TRANSACTION_stopAccessPoint:I = 0x25

.field static final TRANSACTION_stopClatd:I = 0x40

.field static final TRANSACTION_stopTethering:I = 0x15

.field static final TRANSACTION_tetherInterface:I = 0x17

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x43

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x18

.field static final TRANSACTION_wifiFirmwareReload:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/os/INetworkManagementService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 932
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    .line 62
    .restart local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v11

    .line 70
    .local v11, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v11

    .line 80
    .local v11, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v11, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InterfaceConfiguration;

    .line 102
    .local v2, "_arg1":Landroid/net/InterfaceConfiguration;
    :goto_2
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 100
    .end local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_2

    .line 108
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 126
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 135
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 140
    .local v2, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 139
    .end local v2    # "_arg1":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 146
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 155
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 164
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 169
    .restart local v2    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 168
    .end local v2    # "_arg1":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 175
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v11

    .line 179
    .local v11, "_result":[Landroid/net/RouteInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p3, v11, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 181
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 185
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":[Landroid/net/RouteInfo;
    :sswitch_e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 195
    .local v2, "_arg1":Landroid/net/RouteInfo;
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 193
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    .line 201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 211
    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 209
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_6

    .line 217
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_10
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 228
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_11
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 235
    :sswitch_12
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v11

    .line 237
    .local v11, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v11, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 238
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 243
    .end local v11    # "_result":Z
    :sswitch_13
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 246
    .local v1, "_arg0":Z
    :goto_8
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 245
    .end local v1    # "_arg0":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 252
    :sswitch_14
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    .end local v1    # "_arg0":[Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 268
    :sswitch_16
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v11

    .line 270
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v11, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 271
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 276
    .end local v11    # "_result":Z
    :sswitch_17
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 285
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 302
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 305
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 311
    .local v1, "_arg0":Landroid/net/Network;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 308
    .end local v1    # "_arg0":Landroid/net/Network;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Network;
    goto :goto_a

    .line 318
    .end local v1    # "_arg0":Landroid/net/Network;
    :sswitch_1b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v11

    .line 320
    .restart local v11    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 326
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 337
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 348
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->addUpstreamV6Interface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 357
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_1f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 366
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v11

    .line 368
    .restart local v11    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v11    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 385
    invoke-virtual/range {v0 .. v5}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 391
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :sswitch_22
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 400
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 411
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 414
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 420
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 417
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .line 427
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 436
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 439
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 445
    .local v1, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 446
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 442
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_c

    .line 452
    .end local v1    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v11

    .line 454
    .local v11, "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v11, :cond_c

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 462
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 460
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 466
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_28
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v11

    .line 468
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v11, :cond_d

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 476
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 474
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 480
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_29
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v11

    .line 482
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v11, :cond_e

    .line 484
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 490
    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 488
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 494
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_2a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 497
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v11

    .line 498
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v11, :cond_f

    .line 500
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 506
    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 504
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 510
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_2b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v11

    .line 512
    .restart local v11    # "_result":Landroid/net/NetworkStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v11, :cond_10

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 520
    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 518
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 524
    .end local v11    # "_result":Landroid/net/NetworkStats;
    :sswitch_2c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 529
    .local v8, "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 535
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    :sswitch_2d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 538
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 544
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 548
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 549
    .restart local v8    # "_arg1":J
    invoke-virtual {p0, v1, v8, v9}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 555
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":J
    :sswitch_2f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 564
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 567
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 573
    .end local v6    # "_arg0":J
    :sswitch_31
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    .line 578
    .local v2, "_arg1":Z
    :goto_12
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 577
    .end local v2    # "_arg1":Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 584
    .end local v1    # "_arg0":I
    :sswitch_32
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v11

    .line 586
    .local v11, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v11, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 587
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 592
    .end local v11    # "_result":Z
    :sswitch_33
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 599
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 605
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_34
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 608
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 614
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_35
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 618
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 627
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_36
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->flushNetworkDnsCache(I)V

    .line 631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 636
    .end local v1    # "_arg0":I
    :sswitch_37
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 639
    .local v1, "_arg0":Z
    :goto_14
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 638
    .end local v1    # "_arg0":Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_14

    .line 645
    :sswitch_38
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v11

    .line 647
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    if-eqz v11, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 648
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 653
    .end local v11    # "_result":Z
    :sswitch_39
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    .line 658
    .local v2, "_arg1":Z
    :goto_16
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 657
    .end local v2    # "_arg1":Z
    :cond_15
    const/4 v2, 0x0

    goto :goto_16

    .line 664
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    .line 669
    .restart local v2    # "_arg1":Z
    :goto_17
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 668
    .end local v2    # "_arg1":Z
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 675
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v3, 0x1

    .line 682
    .local v3, "_arg2":Z
    :goto_18
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 681
    .end local v3    # "_arg2":Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 688
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    .line 693
    .local v2, "_arg1":Z
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(IZ)V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 692
    .end local v2    # "_arg1":Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 699
    .end local v1    # "_arg0":I
    :sswitch_3d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 703
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 704
    .local v2, "_arg1":[Landroid/net/UidRange;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 710
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRange;
    :sswitch_3e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 714
    .restart local v1    # "_arg0":I
    sget-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/UidRange;

    .line 715
    .restart local v2    # "_arg1":[Landroid/net/UidRange;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 721
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/net/UidRange;
    :sswitch_3f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 730
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_40
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 739
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_41
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    move-result v11

    .line 743
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    if-eqz v11, :cond_19

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 744
    :cond_19
    const/4 v0, 0x0

    goto :goto_1a

    .line 749
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Z
    :sswitch_42
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v1

    .line 752
    .local v1, "_arg0":Landroid/os/INetworkActivityListener;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 758
    .end local v1    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_43
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v1

    .line 761
    .restart local v1    # "_arg0":Landroid/os/INetworkActivityListener;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 767
    .end local v1    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_44
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    move-result v11

    .line 769
    .restart local v11    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    if-eqz v11, :cond_1a

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 770
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1b

    .line 775
    .end local v11    # "_result":Z
    :sswitch_45
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 779
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 786
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_46
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 790
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x1

    .line 792
    .local v2, "_arg1":Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v3, 0x1

    .line 793
    .restart local v3    # "_arg2":Z
    :goto_1d
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 790
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 792
    .restart local v2    # "_arg1":Z
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 799
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :sswitch_47
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 802
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 808
    .end local v1    # "_arg0":I
    :sswitch_48
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 813
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 814
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 819
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_49
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 824
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    .line 825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 830
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_4a
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 834
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 835
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 841
    .local v2, "_arg1":Landroid/net/RouteInfo;
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 842
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 838
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    .end local v3    # "_arg2":I
    :cond_1d
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_1e

    .line 848
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_4b
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 851
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 857
    .end local v1    # "_arg0":I
    :sswitch_4c
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    .line 859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 864
    :sswitch_4d
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 868
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 875
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_4e
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 880
    .local v2, "_arg1":[I
    invoke-virtual {p0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 886
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    :sswitch_4f
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 889
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    .line 890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 895
    .end local v1    # "_arg0":[I
    :sswitch_50
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 898
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 904
    .end local v1    # "_arg0":I
    :sswitch_51
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 907
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 913
    .end local v1    # "_arg0":I
    :sswitch_52
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 918
    .local v10, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-virtual {p0, v1, v10}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 919
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 924
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_53
    const-string v0, "android.os.INetworkManagementService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 927
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
