.class public abstract Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;
.super Landroid/os/Binder;
.source "IFingerprintDaemon.java"

# interfaces
.implements Landroid/hardware/fingerprint/IFingerprintDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IFingerprintDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field static final TRANSACTION_authenticate:I = 0x1

.field static final TRANSACTION_cancelAuthentication:I = 0x2

.field static final TRANSACTION_cancelEnrollment:I = 0x4

.field static final TRANSACTION_closeHal:I = 0xa

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_getAuthenticatorId:I = 0x7

.field static final TRANSACTION_init:I = 0xb

.field static final TRANSACTION_openHal:I = 0x9

.field static final TRANSACTION_postEnroll:I = 0xc

.field static final TRANSACTION_preEnroll:I = 0x5

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_setActiveGroup:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintDaemon;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 165
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 46
    :sswitch_0
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v9, 0x1

    return v9

    .line 51
    :sswitch_1
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 55
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 56
    .local v5, "_arg1":I
    invoke-virtual {p0, v2, v3, v5}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->authenticate(JI)I

    move-result v8

    .line 57
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v9, 0x1

    return v9

    .line 63
    .end local v2    # "_arg0":J
    .end local v5    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_2
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cancelAuthentication()I

    move-result v8

    .line 65
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v9, 0x1

    return v9

    .line 71
    .end local v8    # "_result":I
    :sswitch_3
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 75
    .local v4, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 77
    .restart local v5    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 78
    .local v7, "_arg2":I
    invoke-virtual {p0, v4, v5, v7}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->enroll([BII)I

    move-result v8

    .line 79
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v9, 0x1

    return v9

    .line 85
    .end local v4    # "_arg0":[B
    .end local v5    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_result":I
    :sswitch_4
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->cancelEnrollment()I

    move-result v8

    .line 87
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v9, 0x1

    return v9

    .line 93
    .end local v8    # "_result":I
    :sswitch_5
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->preEnroll()J

    move-result-wide v10

    .line 95
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    const/4 v9, 0x1

    return v9

    .line 101
    .end local v10    # "_result":J
    :sswitch_6
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v0, v5}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->remove(II)I

    move-result v8

    .line 107
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v9, 0x1

    return v9

    .line 113
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_7
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->getAuthenticatorId()J

    move-result-wide v10

    .line 115
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    const/4 v9, 0x1

    return v9

    .line 121
    .end local v10    # "_result":J
    :sswitch_8
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 126
    .local v6, "_arg1":[B
    invoke-virtual {p0, v0, v6}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->setActiveGroup(I[B)I

    move-result v8

    .line 127
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v9, 0x1

    return v9

    .line 133
    .end local v0    # "_arg0":I
    .end local v6    # "_arg1":[B
    .end local v8    # "_result":I
    :sswitch_9
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->openHal()J

    move-result-wide v10

    .line 135
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    const/4 v9, 0x1

    return v9

    .line 141
    .end local v10    # "_result":J
    :sswitch_a
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->closeHal()I

    move-result v8

    .line 143
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v9, 0x1

    return v9

    .line 149
    .end local v8    # "_result":I
    :sswitch_b
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    move-result-object v1

    .line 152
    .local v1, "_arg0":Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v9, 0x1

    return v9

    .line 158
    .end local v1    # "_arg0":Landroid/hardware/fingerprint/IFingerprintDaemonCallback;
    :sswitch_c
    const-string/jumbo v9, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->postEnroll()I

    move-result v8

    .line 160
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v9, 0x1

    return v9

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
