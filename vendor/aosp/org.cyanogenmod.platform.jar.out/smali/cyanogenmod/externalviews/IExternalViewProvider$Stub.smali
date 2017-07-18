.class public abstract Lcyanogenmod/externalviews/IExternalViewProvider$Stub;
.super Landroid/os/Binder;
.source "IExternalViewProvider.java"

# interfaces
.implements Lcyanogenmod/externalviews/IExternalViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IExternalViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IExternalViewProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IExternalViewProvider"

.field static final TRANSACTION_alterWindow:I = 0x7

.field static final TRANSACTION_onAttach:I = 0x1

.field static final TRANSACTION_onDetach:I = 0x6

.field static final TRANSACTION_onPause:I = 0x4

.field static final TRANSACTION_onResume:I = 0x3

.field static final TRANSACTION_onStart:I = 0x2

.field static final TRANSACTION_onStop:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IExternalViewProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 55
    return-object v1

    .line 57
    :cond_0
    const-string/jumbo v1, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/externalviews/IExternalViewProvider;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lcyanogenmod/externalviews/IExternalViewProvider;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 61
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/externalviews/IExternalViewProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 65
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    .line 69
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 73
    :sswitch_0
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v8

    .line 78
    :sswitch_1
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 81
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v7}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->onAttach(Landroid/os/IBinder;)V

    .line 82
    return v8

    .line 86
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_2
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->onStart()V

    .line 88
    return v8

    .line 92
    :sswitch_3
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->onResume()V

    .line 94
    return v8

    .line 98
    :sswitch_4
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->onPause()V

    .line 100
    return v8

    .line 104
    :sswitch_5
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->onStop()V

    .line 106
    return v8

    .line 110
    :sswitch_6
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->onDetach()V

    .line 112
    return v8

    .line 116
    :sswitch_7
    const-string/jumbo v0, "cyanogenmod.externalviews.IExternalViewProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 124
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 126
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 128
    .local v5, "_arg4":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_1
    move-object v0, p0

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcyanogenmod/externalviews/IExternalViewProvider$Stub;->alterWindow(IIIIZLandroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v8

    .line 126
    .end local v5    # "_arg4":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Z
    goto :goto_0

    .line 132
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg5":Landroid/graphics/Rect;
    goto :goto_1

    .line 69
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
