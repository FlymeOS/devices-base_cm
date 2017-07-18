.class public abstract Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;
.super Landroid/os/Binder;
.source "ILiveLockScreenManagerProvider.java"

# interfaces
.implements Lcyanogenmod/app/ILiveLockScreenManagerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/ILiveLockScreenManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.ILiveLockScreenManagerProvider"

.field static final TRANSACTION_cancelLiveLockScreen:I = 0x2

.field static final TRANSACTION_enqueueLiveLockScreen:I = 0x1

.field static final TRANSACTION_getCurrentLiveLockScreen:I = 0x3

.field static final TRANSACTION_getLiveLockScreenEnabled:I = 0x5

.field static final TRANSACTION_registerChangeListener:I = 0x6

.field static final TRANSACTION_unregisterChangeListener:I = 0x7

.field static final TRANSACTION_updateDefaultLiveLockScreen:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ILiveLockScreenManagerProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 84
    if-nez p0, :cond_0

    .line 85
    return-object v1

    .line 87
    :cond_0
    const-string/jumbo v1, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    if-eqz v1, :cond_1

    .line 89
    check-cast v0, Lcyanogenmod/app/ILiveLockScreenManagerProvider;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 91
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 95
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 99
    sparse-switch p1, :sswitch_data_0

    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 103
    :sswitch_0
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    return v0

    .line 108
    :sswitch_1
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcyanogenmod/app/LiveLockScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcyanogenmod/app/LiveLockScreenInfo;

    .line 121
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 123
    .local v4, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->enqueueLiveLockScreen(Ljava/lang/String;ILcyanogenmod/app/LiveLockScreenInfo;[II)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 127
    const/4 v0, 0x1

    return v0

    .line 118
    .end local v4    # "_arg3":[I
    .end local v5    # "_arg4":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg2":Lcyanogenmod/app/LiveLockScreenInfo;
    goto :goto_0

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcyanogenmod/app/LiveLockScreenInfo;
    :sswitch_2
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 138
    .local v8, "_arg2":I
    invoke-virtual {p0, v1, v2, v8}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->cancelLiveLockScreen(Ljava/lang/String;II)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v0, 0x1

    return v0

    .line 144
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_arg2":I
    :sswitch_3
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->getCurrentLiveLockScreen()Lcyanogenmod/app/LiveLockScreenInfo;

    move-result-object v9

    .line 146
    .local v9, "_result":Lcyanogenmod/app/LiveLockScreenInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v9, :cond_1

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Lcyanogenmod/app/LiveLockScreenInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 158
    .end local v9    # "_result":Lcyanogenmod/app/LiveLockScreenInfo;
    :sswitch_4
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    sget-object v0, Lcyanogenmod/app/LiveLockScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcyanogenmod/app/LiveLockScreenInfo;

    .line 166
    :goto_2
    invoke-virtual {p0, v7}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->updateDefaultLiveLockScreen(Lcyanogenmod/app/LiveLockScreenInfo;)V

    .line 167
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_2
    const/4 v7, 0x0

    .local v7, "_arg0":Lcyanogenmod/app/LiveLockScreenInfo;
    goto :goto_2

    .line 171
    .end local v7    # "_arg0":Lcyanogenmod/app/LiveLockScreenInfo;
    :sswitch_5
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->getLiveLockScreenEnabled()Z

    move-result v10

    .line 173
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 179
    .end local v10    # "_result":Z
    :sswitch_6
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ILiveLockScreenChangeListener;

    move-result-object v6

    .line 182
    .local v6, "_arg0":Lcyanogenmod/app/ILiveLockScreenChangeListener;
    invoke-virtual {p0, v6}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->registerChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z

    move-result v10

    .line 183
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v10, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 189
    .end local v6    # "_arg0":Lcyanogenmod/app/ILiveLockScreenChangeListener;
    .end local v10    # "_result":Z
    :sswitch_7
    const-string/jumbo v0, "cyanogenmod.app.ILiveLockScreenManagerProvider"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcyanogenmod/app/ILiveLockScreenChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ILiveLockScreenChangeListener;

    move-result-object v6

    .line 192
    .restart local v6    # "_arg0":Lcyanogenmod/app/ILiveLockScreenChangeListener;
    invoke-virtual {p0, v6}, Lcyanogenmod/app/ILiveLockScreenManagerProvider$Stub;->unregisterChangeListener(Lcyanogenmod/app/ILiveLockScreenChangeListener;)Z

    move-result v10

    .line 193
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v10, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 99
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
