.class public abstract Lorg/codeaurora/ims/csvt/ICsvtService$Stub;
.super Landroid/os/Binder;
.source "ICsvtService.java"

# interfaces
.implements Lorg/codeaurora/ims/csvt/ICsvtService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/csvt/ICsvtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/csvt/ICsvtService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.csvt.ICsvtService"

.field static final TRANSACTION_acceptCall_2:I = 0x3

.field static final TRANSACTION_dial_0:I = 0x1

.field static final TRANSACTION_fallBack:I = 0x5

.field static final TRANSACTION_getCallForwardingOption_8:I = 0x9

.field static final TRANSACTION_getCallWaiting_10:I = 0xb

.field static final TRANSACTION_hangup_1:I = 0x2

.field static final TRANSACTION_isActive:I = 0x7

.field static final TRANSACTION_isIdle:I = 0x6

.field static final TRANSACTION_isNonCsvtIdle:I = 0x8

.field static final TRANSACTION_registerListener:I = 0xd

.field static final TRANSACTION_rejectCall:I = 0x4

.field static final TRANSACTION_setCallForwardingOption_9:I = 0xa

.field static final TRANSACTION_setCallWaiting_11:I = 0xc

.field static final TRANSACTION_unregisterListener:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/csvt/ICsvtService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/csvt/ICsvtService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/codeaurora/ims/csvt/ICsvtService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/csvt/ICsvtService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->dial(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->hangup()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->acceptCall()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->rejectCall()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->fallBack()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    :sswitch_6
    const-string v8, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->isIdle()Z

    move-result v6

    .line 86
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v6, :cond_0

    move v0, v7

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v6    # "_result":Z
    :sswitch_7
    const-string v8, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->isActive()Z

    move-result v6

    .line 94
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v6, :cond_1

    move v0, v7

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v6    # "_result":Z
    :sswitch_8
    const-string v8, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->isNonCsvtIdle()Z

    move-result v6

    .line 102
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v6, :cond_2

    move v0, v7

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    .end local v6    # "_result":Z
    :sswitch_9
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 118
    .local v2, "_arg1":Landroid/os/Message;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    .end local v2    # "_arg1":Landroid/os/Message;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Message;
    goto :goto_1

    .line 124
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Message;
    :sswitch_a
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .local v5, "_arg4":Landroid/os/Message;
    :goto_2
    move-object v0, p0

    .line 140
    invoke-virtual/range {v0 .. v5}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 138
    .end local v5    # "_arg4":Landroid/os/Message;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Message;
    goto :goto_2

    .line 146
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Message;
    :sswitch_b
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 154
    .local v1, "_arg0":Landroid/os/Message;
    :goto_3
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->getCallWaiting(Landroid/os/Message;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    .end local v1    # "_arg0":Landroid/os/Message;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Message;
    goto :goto_3

    .line 160
    .end local v1    # "_arg0":Landroid/os/Message;
    :sswitch_c
    const-string v8, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v1, v7

    .line 164
    .local v1, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 170
    .local v2, "_arg1":Landroid/os/Message;
    :goto_5
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->setCallWaiting(ZLandroid/os/Message;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/Message;
    :cond_6
    move v1, v0

    .line 162
    goto :goto_4

    .line 168
    .restart local v1    # "_arg0":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Message;
    goto :goto_5

    .line 176
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/Message;
    :sswitch_d
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    move-result-object v1

    .line 179
    .local v1, "_arg0":Lorg/codeaurora/ims/csvt/ICsvtServiceListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->registerListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 185
    .end local v1    # "_arg0":Lorg/codeaurora/ims/csvt/ICsvtServiceListener;
    :sswitch_e
    const-string v0, "org.codeaurora.ims.csvt.ICsvtService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/csvt/ICsvtServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/csvt/ICsvtServiceListener;

    move-result-object v1

    .line 188
    .restart local v1    # "_arg0":Lorg/codeaurora/ims/csvt/ICsvtServiceListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/csvt/ICsvtService$Stub;->unregisterListener(Lorg/codeaurora/ims/csvt/ICsvtServiceListener;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
