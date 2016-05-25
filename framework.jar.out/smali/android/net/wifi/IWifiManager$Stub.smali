.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x22

.field static final TRANSACTION_acquireWifiLock:I = 0x1d

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x5

.field static final TRANSACTION_addToBlacklist:I = 0x2a

.field static final TRANSACTION_clearBlacklist:I = 0x2b

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x3e

.field static final TRANSACTION_disableNetwork:I = 0x8

.field static final TRANSACTION_disconnect:I = 0xe

.field static final TRANSACTION_enableAggressiveHandover:I = 0x39

.field static final TRANSACTION_enableNetwork:I = 0x7

.field static final TRANSACTION_enableTdls:I = 0x2e

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2f

.field static final TRANSACTION_enableVerboseLogging:I = 0x36

.field static final TRANSACTION_getAggressiveHandover:I = 0x38

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3a

.field static final TRANSACTION_getBatchedScanResults:I = 0x32

.field static final TRANSACTION_getChannelList:I = 0xa

.field static final TRANSACTION_getConfigFile:I = 0x2d

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x11

.field static final TRANSACTION_getConnectionStatistics:I = 0x3c

.field static final TRANSACTION_getCountryCode:I = 0x15

.field static final TRANSACTION_getDhcpInfo:I = 0x1b

.field static final TRANSACTION_getFrequencyBand:I = 0x17

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getScanResults:I = 0xd

.field static final TRANSACTION_getSimInfo:I = 0x3d

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x37

.field static final TRANSACTION_getWifiApConfiguration:I = 0x26

.field static final TRANSACTION_getWifiApEnabledState:I = 0x25

.field static final TRANSACTION_getWifiEnabledState:I = 0x13

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2c

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x35

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x20

.field static final TRANSACTION_isBatchedScanSupported:I = 0x33

.field static final TRANSACTION_isDualBandSupported:I = 0x18

.field static final TRANSACTION_isIbssSupported:I = 0x19

.field static final TRANSACTION_isMulticastEnabled:I = 0x21

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1c

.field static final TRANSACTION_pingSupplicant:I = 0x9

.field static final TRANSACTION_pollBatchedScan:I = 0x34

.field static final TRANSACTION_reassociate:I = 0x10

.field static final TRANSACTION_reconnect:I = 0xf

.field static final TRANSACTION_releaseMulticastLock:I = 0x23

.field static final TRANSACTION_releaseWifiLock:I = 0x1f

.field static final TRANSACTION_removeNetwork:I = 0x6

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x30

.field static final TRANSACTION_saveConfiguration:I = 0x1a

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3b

.field static final TRANSACTION_setCountryCode:I = 0x14

.field static final TRANSACTION_setFrequencyBand:I = 0x16

.field static final TRANSACTION_setWifiApConfiguration:I = 0x27

.field static final TRANSACTION_setWifiApEnabled:I = 0x24

.field static final TRANSACTION_setWifiEnabled:I = 0x12

.field static final TRANSACTION_startLocationRestrictedScan:I = 0xc

.field static final TRANSACTION_startScan:I = 0xb

.field static final TRANSACTION_startWifi:I = 0x28

.field static final TRANSACTION_stopBatchedScan:I = 0x31

.field static final TRANSACTION_stopWifi:I = 0x29

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 701
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 47
    :sswitch_0
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v9, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v4

    .line 54
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v9, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "_result":I
    :sswitch_2
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    .line 62
    .local v4, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v4, :cond_0

    .line 64
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 74
    .end local v4    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 76
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    const/4 v9, 0x1

    goto :goto_0

    .line 82
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v8

    .line 84
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    const/4 v9, 0x1

    goto :goto_0

    .line 90
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 98
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 99
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    const/4 v9, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_2

    .line 105
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    .line 109
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_2

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 110
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    .line 115
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_7
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    .line 120
    .local v1, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    .line 121
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v4, :cond_4

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 122
    .restart local v1    # "_arg1":Z
    .restart local v4    # "_result":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_5

    .line 127
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :sswitch_8
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    .line 131
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v4, :cond_5

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 132
    :cond_5
    const/4 v9, 0x0

    goto :goto_6

    .line 137
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    .line 139
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v4, :cond_6

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 140
    :cond_6
    const/4 v9, 0x0

    goto :goto_7

    .line 145
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v7

    .line 147
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 149
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 153
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    .line 156
    sget-object v9, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanSettings;

    .line 162
    .local v0, "_arg0":Landroid/net/wifi/ScanSettings;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    .line 163
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 168
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 159
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_8

    .line 166
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_9

    .line 174
    .end local v0    # "_arg0":Landroid/net/wifi/ScanSettings;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    .line 177
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 182
    .local v0, "_arg0":Landroid/os/WorkSource;
    :goto_a
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startLocationRestrictedScan(Landroid/os/WorkSource;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    goto :goto_a

    .line 188
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :sswitch_d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 192
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 194
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 198
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 205
    :sswitch_f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 212
    :sswitch_10
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 219
    :sswitch_11
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 221
    .local v4, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v4, :cond_a

    .line 223
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    :goto_b
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 227
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 233
    .end local v4    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_12
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v0, 0x1

    .line 236
    .local v0, "_arg0":Z
    :goto_c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    .line 237
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v4, :cond_c

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 235
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 238
    .restart local v0    # "_arg0":Z
    .restart local v4    # "_result":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_d

    .line 243
    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    .line 245
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 251
    .end local v4    # "_result":I
    :sswitch_14
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    const/4 v1, 0x1

    .line 256
    .local v1, "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 255
    .end local v1    # "_arg1":Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 262
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 270
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    const/4 v1, 0x1

    .line 275
    .restart local v1    # "_arg1":Z
    :goto_f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 274
    .end local v1    # "_arg1":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 281
    .end local v0    # "_arg0":I
    :sswitch_17
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    .line 283
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 289
    .end local v4    # "_result":I
    :sswitch_18
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    .line 291
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v4, :cond_f

    const/4 v9, 0x1

    :goto_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 292
    :cond_f
    const/4 v9, 0x0

    goto :goto_10

    .line 297
    .end local v4    # "_result":Z
    :sswitch_19
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isIbssSupported()Z

    move-result v4

    .line 299
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_10

    const/4 v9, 0x1

    :goto_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 300
    :cond_10
    const/4 v9, 0x0

    goto :goto_11

    .line 305
    .end local v4    # "_result":Z
    :sswitch_1a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    .line 307
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_11

    const/4 v9, 0x1

    :goto_12
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 308
    :cond_11
    const/4 v9, 0x0

    goto :goto_12

    .line 313
    .end local v4    # "_result":Z
    :sswitch_1b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    .line 315
    .local v4, "_result":Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v4, :cond_12

    .line 317
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 323
    :goto_13
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 321
    :cond_12
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 327
    .end local v4    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    .line 329
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v4, :cond_13

    const/4 v9, 0x1

    :goto_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 330
    :cond_13
    const/4 v9, 0x0

    goto :goto_14

    .line 335
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 341
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    .line 344
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 349
    .local v3, "_arg3":Landroid/os/WorkSource;
    :goto_15
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    .line 350
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v4, :cond_15

    const/4 v9, 0x1

    :goto_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 347
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_14
    const/4 v3, 0x0

    .restart local v3    # "_arg3":Landroid/os/WorkSource;
    goto :goto_15

    .line 351
    .restart local v4    # "_result":Z
    :cond_15
    const/4 v9, 0x0

    goto :goto_16

    .line 356
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 360
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_16

    .line 361
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 366
    .local v1, "_arg1":Landroid/os/WorkSource;
    :goto_17
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 364
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/WorkSource;
    goto :goto_17

    .line 372
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 375
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    .line 376
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v4, :cond_17

    const/4 v9, 0x1

    :goto_18
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 377
    :cond_17
    const/4 v9, 0x0

    goto :goto_18

    .line 382
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_result":Z
    :sswitch_20
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 389
    :sswitch_21
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    .line 391
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v4, :cond_18

    const/4 v9, 0x1

    :goto_19
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 392
    :cond_18
    const/4 v9, 0x0

    goto :goto_19

    .line 397
    .end local v4    # "_result":Z
    :sswitch_22
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 401
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 415
    :sswitch_24
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_19

    .line 418
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 424
    .local v0, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v1, 0x1

    .line 425
    .local v1, "_arg1":Z
    :goto_1b
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 421
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "_arg1":Z
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1a

    .line 424
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 431
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    .line 433
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 439
    .end local v4    # "_result":I
    :sswitch_26
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 441
    .local v4, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v4, :cond_1b

    .line 443
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 449
    :goto_1c
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 447
    :cond_1b
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 453
    .end local v4    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1c

    .line 456
    sget-object v9, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 461
    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 459
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1d

    .line 467
    .end local v0    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_28
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 474
    :sswitch_29
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 481
    :sswitch_2a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 490
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 497
    :sswitch_2c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 499
    .local v4, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    if-eqz v4, :cond_1d

    .line 501
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 507
    :goto_1e
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 505
    :cond_1d
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 511
    .end local v4    # "_result":Landroid/os/Messenger;
    :sswitch_2d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    .line 513
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 519
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v1, 0x1

    .line 524
    .restart local v1    # "_arg1":Z
    :goto_1f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 523
    .end local v1    # "_arg1":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    .line 530
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1f

    const/4 v1, 0x1

    .line 535
    .restart local v1    # "_arg1":Z
    :goto_20
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 534
    .end local v1    # "_arg1":Z
    :cond_1f
    const/4 v1, 0x0

    goto :goto_20

    .line 541
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_20

    .line 544
    sget-object v9, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 550
    .local v0, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 552
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_21

    .line 553
    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 558
    .local v2, "_arg2":Landroid/os/WorkSource;
    :goto_22
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    .line 559
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    if-eqz v4, :cond_22

    const/4 v9, 0x1

    :goto_23
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 547
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_21

    .line 556
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Landroid/os/WorkSource;
    goto :goto_22

    .line 560
    .restart local v4    # "_result":Z
    :cond_22
    const/4 v9, 0x0

    goto :goto_23

    .line 565
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    .end local v4    # "_result":Z
    :sswitch_31
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_23

    .line 568
    sget-object v9, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    .line 573
    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_24
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 571
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_24

    .line 579
    .end local v0    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_32
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 583
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 585
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 589
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_33
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    .line 591
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v4, :cond_24

    const/4 v9, 0x1

    :goto_25
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 592
    :cond_24
    const/4 v9, 0x0

    goto :goto_25

    .line 597
    .end local v4    # "_result":Z
    :sswitch_34
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 604
    :sswitch_35
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 607
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 614
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 617
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 623
    .end local v0    # "_arg0":I
    :sswitch_37
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v4

    .line 625
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 631
    .end local v4    # "_result":I
    :sswitch_38
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v4

    .line 633
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 639
    .end local v4    # "_result":I
    :sswitch_39
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 642
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 648
    .end local v0    # "_arg0":I
    :sswitch_3a
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v4

    .line 650
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 656
    .end local v4    # "_result":I
    :sswitch_3b
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 665
    .end local v0    # "_arg0":I
    :sswitch_3c
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v4

    .line 667
    .local v4, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    if-eqz v4, :cond_25

    .line 669
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 675
    :goto_26
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 673
    :cond_25
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 679
    .end local v4    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_3d
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSimInfo()Landroid/net/wifi/WifiEapSimInfo;

    move-result-object v4

    .line 681
    .local v4, "_result":Landroid/net/wifi/WifiEapSimInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    if-eqz v4, :cond_26

    .line 683
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/net/wifi/WifiEapSimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 689
    :goto_27
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 687
    :cond_26
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 693
    .end local v4    # "_result":Landroid/net/wifi/WifiEapSimInfo;
    :sswitch_3e
    const-string v9, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
