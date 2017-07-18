.class public abstract Landroid/os/INetworkManagementServiceFlyme$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementServiceFlyme.java"

# interfaces
.implements Landroid/os/INetworkManagementServiceFlyme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementServiceFlyme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementServiceFlyme$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementServiceFlyme"

.field static final TRANSACTION_clearFirewallChain:I = 0x2

.field static final TRANSACTION_clearMarkedForwardingDestination:I = 0x4

.field static final TRANSACTION_clearMarkedForwardingRouteWithAddress:I = 0x6

.field static final TRANSACTION_deleteVpnProfile:I = 0xb

.field static final TRANSACTION_doRawPingCheck:I = 0x10

.field static final TRANSACTION_getAllVpnKeys:I = 0x8

.field static final TRANSACTION_getVVsersion:I = 0x7

.field static final TRANSACTION_getVpnProfile:I = 0xa

.field static final TRANSACTION_getVpnProfileDefaultKey:I = 0xe

.field static final TRANSACTION_getVpnProfileVersion:I = 0xc

.field static final TRANSACTION_putVpnProfile:I = 0x9

.field static final TRANSACTION_setFirewallUidChainRule:I = 0x1

.field static final TRANSACTION_setMarkedForwardingDestination:I = 0x3

.field static final TRANSACTION_setMarkedForwardingRouteWithAddress:I = 0x5

.field static final TRANSACTION_setVpnProfileDefaultKey:I = 0xf

.field static final TRANSACTION_setVpnProfileVersion:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string/jumbo v0, "android.os.INetworkManagementServiceFlyme"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementServiceFlyme$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceFlyme;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 34
    if-nez p0, :cond_0

    .line 35
    return-object v1

    .line 37
    :cond_0
    const-string/jumbo v1, "android.os.INetworkManagementServiceFlyme"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementServiceFlyme;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Landroid/os/INetworkManagementServiceFlyme;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 41
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementServiceFlyme$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementServiceFlyme$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 229
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    .line 53
    :sswitch_0
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    const/16 v17, 0x1

    return v17

    .line 58
    :sswitch_1
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_0

    const/4 v11, 0x1

    .line 65
    .local v11, "_arg2":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v11}, Landroid/os/INetworkManagementServiceFlyme$Stub;->setFirewallUidChainRule(IIZ)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    const/16 v17, 0x1

    return v17

    .line 64
    .end local v11    # "_arg2":Z
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "_arg2":Z
    goto :goto_0

    .line 71
    .end local v2    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v11    # "_arg2":Z
    :sswitch_2
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/INetworkManagementServiceFlyme$Stub;->clearFirewallChain(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/16 v17, 0x1

    return v17

    .line 80
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v10}, Landroid/os/INetworkManagementServiceFlyme$Stub;->setMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/16 v17, 0x1

    return v17

    .line 93
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 99
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 100
    .restart local v10    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v10}, Landroid/os/INetworkManagementServiceFlyme$Stub;->clearMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/16 v17, 0x1

    return v17

    .line 106
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 112
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 113
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v9}, Landroid/os/INetworkManagementServiceFlyme$Stub;->setMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/16 v17, 0x1

    return v17

    .line 119
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_6
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 125
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 126
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v9}, Landroid/os/INetworkManagementServiceFlyme$Stub;->clearMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/16 v17, 0x1

    return v17

    .line 132
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_7
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementServiceFlyme$Stub;->getVVsersion()Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    const/16 v17, 0x1

    return v17

    .line 140
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementServiceFlyme$Stub;->getAllVpnKeys()[Ljava/lang/String;

    move-result-object v16

    .line 142
    .local v16, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 144
    const/16 v17, 0x1

    return v17

    .line 148
    .end local v16    # "_result":[Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 153
    .local v8, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Landroid/os/INetworkManagementServiceFlyme$Stub;->putVpnProfile(Ljava/lang/String;[B)V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/16 v17, 0x1

    return v17

    .line 159
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":[B
    :sswitch_a
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    const/4 v7, 0x1

    .line 164
    .local v7, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Landroid/os/INetworkManagementServiceFlyme$Stub;->getVpnProfile(Ljava/lang/String;Z)[B

    move-result-object v15

    .line 165
    .local v15, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 167
    const/16 v17, 0x1

    return v17

    .line 163
    .end local v7    # "_arg1":Z
    .end local v15    # "_result":[B
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_1

    .line 171
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    :sswitch_b
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/INetworkManagementServiceFlyme$Stub;->deleteVpnProfile(Ljava/lang/String;)Z

    move-result v14

    .line 175
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v14, :cond_2

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/16 v17, 0x1

    return v17

    .line 176
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 181
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":Z
    :sswitch_c
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/INetworkManagementServiceFlyme$Stub;->getVpnProfileVersion(Ljava/lang/String;)I

    move-result v12

    .line 185
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/16 v17, 0x1

    return v17

    .line 191
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_d
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 196
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/os/INetworkManagementServiceFlyme$Stub;->setVpnProfileVersion(Ljava/lang/String;I)Z

    move-result v14

    .line 197
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v14, :cond_3

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/16 v17, 0x1

    return v17

    .line 198
    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .line 203
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v14    # "_result":Z
    :sswitch_e
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementServiceFlyme$Stub;->getVpnProfileDefaultKey()Ljava/lang/String;

    move-result-object v13

    .line 205
    .restart local v13    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    const/16 v17, 0x1

    return v17

    .line 211
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/INetworkManagementServiceFlyme$Stub;->setVpnProfileDefaultKey(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/16 v17, 0x1

    return v17

    .line 220
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v17, "android.os.INetworkManagementServiceFlyme"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/INetworkManagementServiceFlyme$Stub;->doRawPingCheck([Ljava/lang/String;)Z

    move-result v14

    .line 224
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v14, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/16 v17, 0x1

    return v17

    .line 225
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 49
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
