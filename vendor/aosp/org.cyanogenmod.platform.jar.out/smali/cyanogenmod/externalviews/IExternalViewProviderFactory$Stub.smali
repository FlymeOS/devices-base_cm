.class public abstract Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;
.super Landroid/os/Binder;
.source "IExternalViewProviderFactory.java"

# interfaces
.implements Lcyanogenmod/externalviews/IExternalViewProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IExternalViewProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IExternalViewProviderFactory"

.field static final TRANSACTION_createExternalView:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProviderFactory"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    return-object v1

    .line 40
    :cond_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IExternalViewProviderFactory"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/externalviews/IExternalViewProviderFactory;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcyanogenmod/externalviews/IExternalViewProviderFactory;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 44
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v3, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 56
    :sswitch_0
    const-string/jumbo v2, "cyanogenmod.externalviews.IExternalViewProviderFactory"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v3

    .line 61
    :sswitch_1
    const-string/jumbo v2, "cyanogenmod.externalviews.IExternalViewProviderFactory"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;->createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v1

    .line 70
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    return v3

    .line 67
    .end local v1    # "_result":Landroid/os/IBinder;
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
