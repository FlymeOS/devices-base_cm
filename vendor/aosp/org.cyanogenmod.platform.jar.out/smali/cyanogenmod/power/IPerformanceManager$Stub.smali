.class public abstract Lcyanogenmod/power/IPerformanceManager$Stub;
.super Landroid/os/Binder;
.source "IPerformanceManager.java"

# interfaces
.implements Lcyanogenmod/power/IPerformanceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/power/IPerformanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.power.IPerformanceManager"

.field static final TRANSACTION_cpuBoost_0:I = 0x1

.field static final TRANSACTION_getNumberOfProfiles:I = 0x4

.field static final TRANSACTION_getPowerProfile:I = 0x3

.field static final TRANSACTION_getProfileHasAppProfiles:I = 0x5

.field static final TRANSACTION_setPowerProfile:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string/jumbo v0, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/power/IPerformanceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p0, :cond_0

    .line 53
    return-object v1

    .line 55
    :cond_0
    const-string/jumbo v1, "cyanogenmod.power.IPerformanceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/power/IPerformanceManager;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcyanogenmod/power/IPerformanceManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 59
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/power/IPerformanceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 63
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 67
    sparse-switch p1, :sswitch_data_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 71
    :sswitch_0
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return v4

    .line 76
    :sswitch_1
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->cpuBoost(I)V

    .line 80
    return v4

    .line 84
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->setPowerProfile(I)Z

    move-result v2

    .line 88
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v4

    .line 94
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_3
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getPowerProfile()I

    move-result v1

    .line 96
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v4

    .line 102
    .end local v1    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getNumberOfProfiles()I

    move-result v1

    .line 104
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v4

    .line 110
    .end local v1    # "_result":I
    :sswitch_5
    const-string/jumbo v5, "cyanogenmod.power.IPerformanceManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/power/IPerformanceManager$Stub;->getProfileHasAppProfiles(I)Z

    move-result v2

    .line 114
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v4

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
