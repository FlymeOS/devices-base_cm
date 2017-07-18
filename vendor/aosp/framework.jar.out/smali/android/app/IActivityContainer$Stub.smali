.class public abstract Landroid/app/IActivityContainer$Stub;
.super Landroid/os/Binder;
.source "IActivityContainer.java"

# interfaces
.implements Landroid/app/IActivityContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityContainer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityContainer"

.field static final TRANSACTION_attachToDisplay:I = 0x1

.field static final TRANSACTION_getDisplayId:I = 0x5

.field static final TRANSACTION_getStackId:I = 0x6

.field static final TRANSACTION_injectEvent:I = 0x7

.field static final TRANSACTION_release:I = 0x8

.field static final TRANSACTION_setSurface:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityIntentSender:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.IActivityContainer"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityContainer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.IActivityContainer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityContainer;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/IActivityContainer;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IActivityContainer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityContainer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 43
    :sswitch_0
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v10, 0x1

    return v10

    .line 48
    :sswitch_1
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IActivityContainer$Stub;->attachToDisplay(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v10, 0x1

    return v10

    .line 57
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 60
    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 66
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 68
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 70
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 71
    .local v7, "_arg3":I
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/app/IActivityContainer$Stub;->setSurface(Landroid/view/Surface;III)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v10, 0x1

    return v10

    .line 63
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/view/Surface;
    goto :goto_0

    .line 77
    .end local v4    # "_arg0":Landroid/view/Surface;
    :sswitch_3
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 80
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 85
    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/IActivityContainer$Stub;->startActivity(Landroid/content/Intent;)I

    move-result v8

    .line 86
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v10, 0x1

    return v10

    .line 83
    .end local v8    # "_result":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/content/Intent;
    goto :goto_1

    .line 92
    .end local v2    # "_arg0":Landroid/content/Intent;
    :sswitch_4
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 95
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityContainer$Stub;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    move-result v8

    .line 96
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v10, 0x1

    return v10

    .line 102
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v8    # "_result":I
    :sswitch_5
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->getDisplayId()I

    move-result v8

    .line 104
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v10, 0x1

    return v10

    .line 110
    .end local v8    # "_result":I
    :sswitch_6
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->getStackId()I

    move-result v8

    .line 112
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v10, 0x1

    return v10

    .line 118
    .end local v8    # "_result":I
    :sswitch_7
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 121
    sget-object v10, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputEvent;

    .line 126
    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/IActivityContainer$Stub;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v9

    .line 127
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v9, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v10, 0x1

    return v10

    .line 124
    .end local v9    # "_result":Z
    :cond_2
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/view/InputEvent;
    goto :goto_2

    .line 128
    .end local v3    # "_arg0":Landroid/view/InputEvent;
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 133
    .end local v9    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->release()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v10, 0x1

    return v10

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
