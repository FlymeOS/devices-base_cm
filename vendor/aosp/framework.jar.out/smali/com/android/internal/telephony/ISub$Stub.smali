.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final TRANSACTION_activateSubId:I = 0x20

.field static final TRANSACTION_addSubInfoRecord:I = 0x8

.field static final TRANSACTION_clearDefaultsForInactiveSubIds:I = 0x1a

.field static final TRANSACTION_clearSubInfo:I = 0x12

.field static final TRANSACTION_deactivateSubId:I = 0x21

.field static final TRANSACTION_getActiveSubIdList:I = 0x1b

.field static final TRANSACTION_getActiveSubInfoCount:I = 0x7

.field static final TRANSACTION_getActiveSubInfoList:I = 0x5

.field static final TRANSACTION_getAllSubInfoCount:I = 0x6

.field static final TRANSACTION_getAllSubInfoList:I = 0x4

.field static final TRANSACTION_getDefaultDataSubId:I = 0x14

.field static final TRANSACTION_getDefaultSmsSubId:I = 0x18

.field static final TRANSACTION_getDefaultSubId:I = 0x11

.field static final TRANSACTION_getDefaultVoiceSubId:I = 0x16

.field static final TRANSACTION_getOnDemandDataSubId:I = 0x24

.field static final TRANSACTION_getPhoneId:I = 0x13

.field static final TRANSACTION_getSlotId:I = 0xf

.field static final TRANSACTION_getSubId:I = 0x10

.field static final TRANSACTION_getSubInfoForSubscriber:I = 0x1

.field static final TRANSACTION_getSubInfoUsingIccId:I = 0x2

.field static final TRANSACTION_getSubInfoUsingSlotId:I = 0x3

.field static final TRANSACTION_getSubState:I = 0x23

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x1c

.field static final TRANSACTION_isVoicePromptEnabled:I = 0x1e

.field static final TRANSACTION_setColor:I = 0x9

.field static final TRANSACTION_setDataRoaming:I = 0xe

.field static final TRANSACTION_setDefaultDataSubId:I = 0x15

.field static final TRANSACTION_setDefaultSmsSubId:I = 0x19

.field static final TRANSACTION_setDefaultVoiceSubId:I = 0x17

.field static final TRANSACTION_setDisplayName:I = 0xa

.field static final TRANSACTION_setDisplayNameUsingSrc:I = 0xb

.field static final TRANSACTION_setDisplayNumber:I = 0xc

.field static final TRANSACTION_setDisplayNumberFormat:I = 0xd

.field static final TRANSACTION_setSMSPromptEnabled:I = 0x1d

.field static final TRANSACTION_setSubState:I = 0x22

.field static final TRANSACTION_setVoicePromptEnabled:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
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
    const-string v1, "com.android.internal.telephony.ISub"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ISub;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 50
    .local v6, "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v8

    .line 51
    .local v8, "_result":Landroid/telephony/SubInfoRecord;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v8, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/telephony/SubInfoRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 63
    .end local v6    # "_arg0":J
    .end local v8    # "_result":Landroid/telephony/SubInfoRecord;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 67
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_3
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v10

    .line 77
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_4
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList()Ljava/util/List;

    move-result-object v10

    .line 85
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_5
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v10

    .line 93
    .restart local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    :sswitch_6
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoCount()I

    move-result v8

    .line 101
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 107
    .end local v8    # "_result":I
    :sswitch_7
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount()I

    move-result v8

    .line 109
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 115
    .end local v8    # "_result":I
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfoRecord(Ljava/lang/String;I)I

    move-result v8

    .line 121
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 127
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_9
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 132
    .local v2, "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setColor(IJ)I

    move-result v8

    .line 133
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 139
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_a
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayName(Ljava/lang/String;J)I

    move-result v8

    .line 145
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 151
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_b
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 157
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg2":J
    move-object v0, p0

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;JJ)I

    move-result v8

    .line 159
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 165
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v8    # "_result":I
    :sswitch_c
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 170
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;J)I

    move-result v8

    .line 171
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 177
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 181
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 182
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumberFormat(IJ)I

    move-result v8

    .line 183
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 189
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_e
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 194
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(IJ)I

    move-result v8

    .line 195
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v8    # "_result":I
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 204
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getSlotId(J)I

    move-result v8

    .line 205
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    .end local v6    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_10
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)[J

    move-result-object v8

    .line 215
    .local v8, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 221
    .end local v1    # "_arg0":I
    .end local v8    # "_result":[J
    :sswitch_11
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()J

    move-result-wide v8

    .line 223
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 229
    .end local v8    # "_result":J
    :sswitch_12
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->clearSubInfo()I

    move-result v8

    .line 231
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    .end local v8    # "_result":I
    :sswitch_13
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 240
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(J)I

    move-result v8

    .line 241
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 247
    .end local v6    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_14
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()J

    move-result-wide v8

    .line 249
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 255
    .end local v8    # "_result":J
    :sswitch_15
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 258
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(J)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    .end local v6    # "_arg0":J
    :sswitch_16
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()J

    move-result-wide v8

    .line 266
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    .end local v8    # "_result":J
    :sswitch_17
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 275
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(J)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    .end local v6    # "_arg0":J
    :sswitch_18
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()J

    move-result-wide v8

    .line 283
    .restart local v8    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 289
    .end local v8    # "_result":J
    :sswitch_19
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 292
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(J)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 298
    .end local v6    # "_arg0":J
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->clearDefaultsForInactiveSubIds()V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 305
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList()[J

    move-result-object v8

    .line 307
    .local v8, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 309
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 313
    .end local v8    # "_result":[J
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->isSMSPromptEnabled()Z

    move-result v8

    .line 315
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v8, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 321
    .end local v8    # "_result":Z
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 324
    .local v1, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setSMSPromptEnabled(Z)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 323
    .end local v1    # "_arg0":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 330
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->isVoicePromptEnabled()Z

    move-result v8

    .line 332
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 333
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 338
    .end local v8    # "_result":Z
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 341
    .restart local v1    # "_arg0":Z
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setVoicePromptEnabled(Z)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 340
    .end local v1    # "_arg0":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 347
    :sswitch_20
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 350
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->activateSubId(J)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 356
    .end local v6    # "_arg0":J
    :sswitch_21
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 359
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->deactivateSubId(J)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 365
    .end local v6    # "_arg0":J
    :sswitch_22
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 369
    .restart local v6    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 370
    .local v2, "_arg1":I
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/internal/telephony/ISub$Stub;->setSubState(JI)I

    move-result v8

    .line 371
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 377
    .end local v2    # "_arg1":I
    .end local v6    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_23
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 380
    .restart local v6    # "_arg0":J
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ISub$Stub;->getSubState(J)I

    move-result v8

    .line 381
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 387
    .end local v6    # "_arg0":J
    .end local v8    # "_result":I
    :sswitch_24
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISub$Stub;->getOnDemandDataSubId()J

    move-result-wide v8

    .line 389
    .local v8, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    const/4 v0, 0x1

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
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
