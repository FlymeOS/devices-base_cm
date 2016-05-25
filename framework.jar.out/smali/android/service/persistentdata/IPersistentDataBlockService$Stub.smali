.class public abstract Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.super Landroid/os/Binder;
.source "IPersistentDataBlockService.java"

# interfaces
.implements Landroid/service/persistentdata/IPersistentDataBlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/persistentdata/IPersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.persistentdata.IPersistentDataBlockService"

.field static final TRANSACTION_getDataBlockSize:I = 0x4

.field static final TRANSACTION_getMaximumDataBlockSize:I = 0x5

.field static final TRANSACTION_getOemUnlockEnabled:I = 0x7

.field static final TRANSACTION_read:I = 0x2

.field static final TRANSACTION_setOemUnlockEnabled:I = 0x6

.field static final TRANSACTION_wipe:I = 0x3

.field static final TRANSACTION_write:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Landroid/service/persistentdata/IPersistentDataBlockService;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 50
    :sswitch_0
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 58
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->write([B)I

    move-result v2

    .line 59
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->read()[B

    move-result-object v2

    .line 67
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 73
    .end local v2    # "_result":[B
    :sswitch_3
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->wipe()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getDataBlockSize()I

    move-result v2

    .line 82
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v2    # "_result":I
    :sswitch_5
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getMaximumDataBlockSize()J

    move-result-wide v2

    .line 90
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 96
    .end local v2    # "_result":J
    :sswitch_6
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 99
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->setOemUnlockEnabled(Z)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0    # "_arg0":Z
    :sswitch_7
    const-string v4, "android.service.persistentdata.IPersistentDataBlockService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->getOemUnlockEnabled()Z

    move-result v2

    .line 107
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 46
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
