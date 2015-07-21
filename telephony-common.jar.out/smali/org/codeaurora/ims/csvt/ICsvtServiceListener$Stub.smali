.class public abstract Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;
.super Landroid/os/Binder;
.source "ICsvtServiceListener.java"

# interfaces
.implements Lorg/codeaurora/ims/csvt/ICsvtServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/csvt/ICsvtServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.csvt.ICsvtServiceListener"

.field static final TRANSACTION_onCallForwardingOptions:I = 0x4

.field static final TRANSACTION_onCallStatus_1:I = 0x2

.field static final TRANSACTION_onCallWaiting_2:I = 0x3

.field static final TRANSACTION_onPhoneStateChanged_0:I = 0x1

.field static final TRANSACTION_onRingbackTone:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/csvt/ICsvtServiceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v3, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->onPhoneStateChanged(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v3, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->onCallStatus(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v3, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 71
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->onCallWaiting(Z)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Z
    :sswitch_4
    const-string v3, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    sget-object v3, Lorg/codeaurora/ims/csvt/CallForwardInfoP;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/csvt/CallForwardInfoP;>;"
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->onCallForwardingOptions(Ljava/util/List;)V

    goto :goto_0

    .line 84
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/csvt/CallForwardInfoP;>;"
    :sswitch_5
    const-string v3, "org.codeaurora.ims.csvt.ICsvtServiceListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 87
    .restart local v0    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->onRingbackTone(Z)V

    goto :goto_0

    .line 43
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
