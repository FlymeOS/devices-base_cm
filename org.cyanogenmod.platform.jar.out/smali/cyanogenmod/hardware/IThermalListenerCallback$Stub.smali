.class public abstract Lcyanogenmod/hardware/IThermalListenerCallback$Stub;
.super Landroid/os/Binder;
.source "IThermalListenerCallback.java"

# interfaces
.implements Lcyanogenmod/hardware/IThermalListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/IThermalListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/IThermalListenerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.IThermalListenerCallback"

.field static final TRANSACTION_onThermalChanged_0:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string/jumbo v0, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 36
    return-object v1

    .line 38
    :cond_0
    const-string/jumbo v1, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/hardware/IThermalListenerCallback;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcyanogenmod/hardware/IThermalListenerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 42
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/hardware/IThermalListenerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v2, 0x1

    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 54
    :sswitch_0
    const-string/jumbo v1, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v2

    .line 59
    :sswitch_1
    const-string/jumbo v1, "cyanogenmod.hardware.IThermalListenerCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->onThermalChanged(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v2

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
