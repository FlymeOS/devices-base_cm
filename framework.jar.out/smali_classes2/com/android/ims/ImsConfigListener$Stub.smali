.class public abstract Lcom/android/ims/ImsConfigListener$Stub;
.super Landroid/os/Binder;
.source "ImsConfigListener.java"

# interfaces
.implements Lcom/android/ims/ImsConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfigListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfigListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.ImsConfigListener"

.field static final TRANSACTION_onGetFeatureResponse_0:I = 0x1

.field static final TRANSACTION_onGetPacketCount_4:I = 0x5

.field static final TRANSACTION_onGetPacketErrorCount:I = 0x6

.field static final TRANSACTION_onGetVideoQuality_2:I = 0x3

.field static final TRANSACTION_onGetWifiCallingPreference_6:I = 0x7

.field static final TRANSACTION_onSetFeatureResponse_1:I = 0x2

.field static final TRANSACTION_onSetVideoQuality_3:I = 0x4

.field static final TRANSACTION_onSetWifiCallingPreference_7:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.android.ims.ImsConfigListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/ImsConfigListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.android.ims.ImsConfigListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/ims/ImsConfigListener;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/android/ims/ImsConfigListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/ims/ImsConfigListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    .local v4, "_arg3":I
    invoke-virtual {p0, v0, v2, v1, v4}, Lcom/android/ims/ImsConfigListener$Stub;->onGetFeatureResponse(IIII)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg3":I
    :sswitch_2
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 74
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v0, v2, v1, v4}, Lcom/android/ims/ImsConfigListener$Stub;->onSetFeatureResponse(IIII)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg3":I
    :sswitch_3
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/ims/ImsConfigListener$Stub;->onGetVideoQuality(II)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsConfigListener$Stub;->onSetVideoQuality(I)V

    goto :goto_0

    .line 97
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 102
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/ims/ImsConfigListener$Stub;->onGetPacketCount(IJ)V

    goto :goto_0

    .line 107
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":J
    :sswitch_6
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 112
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/ims/ImsConfigListener$Stub;->onGetPacketErrorCount(IJ)V

    goto :goto_0

    .line 117
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":J
    :sswitch_7
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .restart local v1    # "_arg2":I
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/ims/ImsConfigListener$Stub;->onGetWifiCallingPreference(III)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":I
    :sswitch_8
    const-string v6, "com.android.ims.ImsConfigListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/ImsConfigListener$Stub;->onSetWifiCallingPreference(I)V

    goto/16 :goto_0

    .line 42
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
