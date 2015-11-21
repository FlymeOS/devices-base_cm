.class public abstract Landroid/os/IBatteryPropertiesRegistrar$Stub;
.super Landroid/os/Binder;
.source "IBatteryPropertiesRegistrar.java"

# interfaces
.implements Landroid/os/IBatteryPropertiesRegistrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBatteryPropertiesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IBatteryPropertiesRegistrar"

.field static final TRANSACTION_getDockProperty:I = 0x4

.field static final TRANSACTION_getProperty:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p0, p0, v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;
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
    const-string v1, "android.os.IBatteryPropertiesRegistrar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IBatteryPropertiesRegistrar;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/IBatteryPropertiesRegistrar;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IBatteryPropertiesListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesListener;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Landroid/os/IBatteryPropertiesListener;
    invoke-virtual {p0, v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->registerListener(Landroid/os/IBatteryPropertiesListener;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Landroid/os/IBatteryPropertiesListener;
    :sswitch_2
    const-string v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IBatteryPropertiesListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesListener;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Landroid/os/IBatteryPropertiesListener;
    invoke-virtual {p0, v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->unregisterListener(Landroid/os/IBatteryPropertiesListener;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Landroid/os/IBatteryPropertiesListener;
    :sswitch_3
    const-string v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .local v0, "_arg0":I
    new-instance v1, Landroid/os/BatteryProperty;

    invoke-direct {v1}, Landroid/os/BatteryProperty;-><init>()V

    .line 73
    .local v1, "_arg1":Landroid/os/BatteryProperty;
    invoke-virtual {p0, v0, v1}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v2

    .line 74
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v1, p3, v3}, Landroid/os/BatteryProperty;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/BatteryProperty;
    .end local v2    # "_result":I
    :sswitch_4
    const-string v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/os/BatteryProperty;

    invoke-direct {v1}, Landroid/os/BatteryProperty;-><init>()V

    .line 92
    .restart local v1    # "_arg1":Landroid/os/BatteryProperty;
    invoke-virtual {p0, v0, v1}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->getDockProperty(ILandroid/os/BatteryProperty;)I

    move-result v2

    .line 93
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v1, p3, v3}, Landroid/os/BatteryProperty;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
