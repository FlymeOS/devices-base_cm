.class public abstract Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;
.super Landroid/os/Binder;
.source "IWifiPasspointManager.java"

# interfaces
.implements Landroid/net/wifi/passpoint/IWifiPasspointManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/IWifiPasspointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.passpoint.IWifiPasspointManager"

.field static final TRANSACTION_addCredential:I = 0x5

.field static final TRANSACTION_getCredentials:I = 0x4

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getPasspointState:I = 0x2

.field static final TRANSACTION_removeCredential:I = 0x7

.field static final TRANSACTION_requestCredentialMatch:I = 0x3

.field static final TRANSACTION_updateCredential:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/passpoint/IWifiPasspointManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/passpoint/IWifiPasspointManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/passpoint/IWifiPasspointManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v8

    .line 52
    :sswitch_1
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 54
    .local v3, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v3, p3, v8}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    return v8

    .line 60
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v3    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getPasspointState()I

    move-result v2

    .line 68
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v8

    .line 74
    .end local v2    # "_result":I
    :sswitch_3
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    sget-object v7, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0, v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->requestCredentialMatch(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 78
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 80
    return v8

    .line 84
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointPolicy;>;"
    :sswitch_4
    const-string/jumbo v7, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->getCredentials()Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    return v8

    .line 92
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointCredential;>;"
    :sswitch_5
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 95
    sget-object v9, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .line 100
    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    move-result v6

    .line 101
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v6, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return v8

    .line 98
    .end local v6    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_1

    .line 107
    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :sswitch_6
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 110
    sget-object v9, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .line 115
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    move-result v6

    .line 116
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v6, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v8

    .line 113
    .end local v6    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_2

    .line 122
    .end local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    :sswitch_7
    const-string/jumbo v9, "android.net.wifi.passpoint.IWifiPasspointManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 125
    sget-object v9, Landroid/net/wifi/passpoint/WifiPasspointCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .line 130
    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/passpoint/IWifiPasspointManager$Stub;->removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z

    move-result v6

    .line 131
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v6, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v8

    .line 128
    .end local v6    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/passpoint/WifiPasspointCredential;
    goto :goto_3

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
