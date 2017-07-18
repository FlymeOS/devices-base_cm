.class public abstract Landroid/bluetooth/IBluetoothInputDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothInputDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothInputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothInputDevice"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getIdleTime:I = 0xe

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_getProtocolMode:I = 0x8

.field static final TRANSACTION_getReport:I = 0xb

.field static final TRANSACTION_sendData:I = 0xd

.field static final TRANSACTION_setIdleTime:I = 0xf

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_setProtocolMode:I = 0xa

.field static final TRANSACTION_setReport:I = 0xc

.field static final TRANSACTION_virtualUnplug:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputDevice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothInputDevice;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 282
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 47
    :sswitch_0
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v11, 0x1

    return v11

    .line 52
    :sswitch_1
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_0

    .line 55
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 61
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v11, 0x1

    return v11

    .line 58
    .end local v10    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 67
    .end local v10    # "_result":Z
    :sswitch_2
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 70
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 75
    :goto_2
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 76
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v10, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v11, 0x1

    return v11

    .line 73
    .end local v10    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 77
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 82
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 84
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 86
    const/4 v11, 0x1

    return v11

    .line 90
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_4
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 93
    .local v1, "_arg0":[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v9

    .line 94
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 96
    const/4 v11, 0x1

    return v11

    .line 100
    .end local v1    # "_arg0":[I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    .line 103
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 108
    :goto_4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 109
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v11, 0x1

    return v11

    .line 106
    .end local v8    # "_result":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 115
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_6
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    .line 118
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 124
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 126
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v10, :cond_6

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v11, 0x1

    return v11

    .line 121
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_5

    .line 127
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    .line 132
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    .line 135
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 140
    :goto_7
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 141
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v11, 0x1

    return v11

    .line 138
    .end local v8    # "_result":I
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 147
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_8
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    .line 150
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 155
    :goto_8
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 156
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v10, :cond_9

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v11, 0x1

    return v11

    .line 153
    .end local v10    # "_result":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_8

    .line 157
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_9

    .line 162
    .end local v10    # "_result":Z
    :sswitch_9
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    .line 165
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 170
    :goto_a
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 171
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v10, :cond_b

    const/4 v11, 0x1

    :goto_b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v11, 0x1

    return v11

    .line 168
    .end local v10    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 172
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_b

    .line 177
    .end local v10    # "_result":Z
    :sswitch_a
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c

    .line 180
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 186
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 188
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :goto_d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v11, 0x1

    return v11

    .line 183
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 189
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_d

    .line 194
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_b
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_e

    .line 197
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 203
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 205
    .local v2, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 207
    .local v5, "_arg2":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 208
    .local v7, "_arg3":I
    invoke-virtual {p0, v0, v2, v5, v7}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z

    move-result v10

    .line 209
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v10, :cond_f

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v11, 0x1

    return v11

    .line 200
    .end local v2    # "_arg1":B
    .end local v5    # "_arg2":B
    .end local v7    # "_arg3":I
    .end local v10    # "_result":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 210
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "_arg1":B
    .restart local v5    # "_arg2":B
    .restart local v7    # "_arg3":I
    .restart local v10    # "_result":Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_f

    .line 215
    .end local v2    # "_arg1":B
    .end local v5    # "_arg2":B
    .end local v7    # "_arg3":I
    .end local v10    # "_result":Z
    :sswitch_c
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_10

    .line 218
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 224
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 226
    .restart local v2    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v6}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    move-result v10

    .line 228
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v10, :cond_11

    const/4 v11, 0x1

    :goto_11
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v11, 0x1

    return v11

    .line 221
    .end local v2    # "_arg1":B
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 229
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "_arg1":B
    .restart local v6    # "_arg2":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_11
    const/4 v11, 0x0

    goto :goto_11

    .line 234
    .end local v2    # "_arg1":B
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_d
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_12

    .line 237
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 243
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v10

    .line 245
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v10, :cond_13

    const/4 v11, 0x1

    :goto_13
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v11, 0x1

    return v11

    .line 240
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 246
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "_arg1":Ljava/lang/String;
    .restart local v10    # "_result":Z
    :cond_13
    const/4 v11, 0x0

    goto :goto_13

    .line 251
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_e
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_14

    .line 254
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 259
    :goto_14
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 260
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v10, :cond_15

    const/4 v11, 0x1

    :goto_15
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v11, 0x1

    return v11

    .line 257
    .end local v10    # "_result":Z
    :cond_14
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 261
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_15
    const/4 v11, 0x0

    goto :goto_15

    .line 266
    .end local v10    # "_result":Z
    :sswitch_f
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_16

    .line 269
    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 275
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 276
    .restart local v2    # "_arg1":B
    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v10

    .line 277
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v10, :cond_17

    const/4 v11, 0x1

    :goto_17
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v11, 0x1

    return v11

    .line 272
    .end local v2    # "_arg1":B
    .end local v10    # "_result":Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_16

    .line 278
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "_arg1":B
    .restart local v10    # "_result":Z
    :cond_17
    const/4 v11, 0x0

    goto :goto_17

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
