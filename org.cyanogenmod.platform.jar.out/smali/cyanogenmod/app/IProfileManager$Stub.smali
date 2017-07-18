.class public abstract Lcyanogenmod/app/IProfileManager$Stub;
.super Landroid/os/Binder;
.source "IProfileManager.java"

# interfaces
.implements Lcyanogenmod/app/IProfileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/IProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/IProfileManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.app.IProfileManager"

.field static final TRANSACTION_addNotificationGroup:I = 0xe

.field static final TRANSACTION_addProfile:I = 0x4

.field static final TRANSACTION_getActiveProfile:I = 0x3

.field static final TRANSACTION_getNotificationGroup:I = 0x12

.field static final TRANSACTION_getNotificationGroupForPackage:I = 0x11

.field static final TRANSACTION_getNotificationGroups:I = 0xd

.field static final TRANSACTION_getProfile:I = 0x7

.field static final TRANSACTION_getProfileByName:I = 0x8

.field static final TRANSACTION_getProfiles:I = 0x9

.field static final TRANSACTION_isEnabled:I = 0x14

.field static final TRANSACTION_notificationGroupExistsByName:I = 0xc

.field static final TRANSACTION_profileExists:I = 0xa

.field static final TRANSACTION_profileExistsByName:I = 0xb

.field static final TRANSACTION_removeNotificationGroup:I = 0xf

.field static final TRANSACTION_removeProfile:I = 0x5

.field static final TRANSACTION_resetAll:I = 0x13

.field static final TRANSACTION_setActiveProfile:I = 0x1

.field static final TRANSACTION_setActiveProfileByName:I = 0x2

.field static final TRANSACTION_updateNotificationGroup:I = 0x10

.field static final TRANSACTION_updateProfile:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string/jumbo v0, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IProfileManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 108
    if-nez p0, :cond_0

    .line 109
    return-object v1

    .line 111
    :cond_0
    const-string/jumbo v1, "cyanogenmod.app.IProfileManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/app/IProfileManager;

    if-eqz v1, :cond_1

    .line 113
    check-cast v0, Lcyanogenmod/app/IProfileManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 115
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/app/IProfileManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/app/IProfileManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 119
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    .line 123
    sparse-switch p1, :sswitch_data_0

    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 127
    :sswitch_0
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    const/4 v9, 0x1

    return v9

    .line 132
    :sswitch_1
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    .line 135
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 140
    :goto_0
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->setActiveProfile(Landroid/os/ParcelUuid;)Z

    move-result v6

    .line 141
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v6, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v9, 0x1

    return v9

    .line 138
    .end local v6    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 142
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v6    # "_result":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 147
    .end local v6    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->setActiveProfileByName(Ljava/lang/String;)Z

    move-result v6

    .line 151
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v6, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v9, 0x1

    return v9

    .line 152
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 157
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_3
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v5

    .line 159
    .local v5, "_result":Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v5, :cond_3

    .line 161
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_3
    const/4 v9, 0x1

    return v9

    .line 165
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 171
    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :sswitch_4
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 174
    sget-object v9, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    .line 179
    :goto_4
    invoke-virtual {p0, v2}, Lcyanogenmod/app/IProfileManager$Stub;->addProfile(Lcyanogenmod/app/Profile;)Z

    move-result v6

    .line 180
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v6, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v9, 0x1

    return v9

    .line 177
    .end local v6    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "_arg0":Lcyanogenmod/app/Profile;
    goto :goto_4

    .line 181
    .end local v2    # "_arg0":Lcyanogenmod/app/Profile;
    .restart local v6    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 186
    .end local v6    # "_result":Z
    :sswitch_5
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 189
    sget-object v9, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    .line 194
    :goto_6
    invoke-virtual {p0, v2}, Lcyanogenmod/app/IProfileManager$Stub;->removeProfile(Lcyanogenmod/app/Profile;)Z

    move-result v6

    .line 195
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v6, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v9, 0x1

    return v9

    .line 192
    .end local v6    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcyanogenmod/app/Profile;
    goto :goto_6

    .line 196
    .end local v2    # "_arg0":Lcyanogenmod/app/Profile;
    .restart local v6    # "_result":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 201
    .end local v6    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    .line 204
    sget-object v9, Lcyanogenmod/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/Profile;

    .line 209
    :goto_8
    invoke-virtual {p0, v2}, Lcyanogenmod/app/IProfileManager$Stub;->updateProfile(Lcyanogenmod/app/Profile;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v9, 0x1

    return v9

    .line 207
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lcyanogenmod/app/Profile;
    goto :goto_8

    .line 215
    .end local v2    # "_arg0":Lcyanogenmod/app/Profile;
    :sswitch_7
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    .line 218
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 223
    :goto_9
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;

    move-result-object v5

    .line 224
    .restart local v5    # "_result":Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v5, :cond_a

    .line 226
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    :goto_a
    const/4 v9, 0x1

    return v9

    .line 221
    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_9

    .line 230
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v5    # "_result":Lcyanogenmod/app/Profile;
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 236
    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :sswitch_8
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->getProfileByName(Ljava/lang/String;)Lcyanogenmod/app/Profile;

    move-result-object v5

    .line 240
    .restart local v5    # "_result":Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v5, :cond_b

    .line 242
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/app/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 248
    :goto_b
    const/4 v9, 0x1

    return v9

    .line 246
    :cond_b
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 252
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Lcyanogenmod/app/Profile;
    :sswitch_9
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->getProfiles()[Lcyanogenmod/app/Profile;

    move-result-object v8

    .line 254
    .local v8, "_result":[Lcyanogenmod/app/Profile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 256
    const/4 v9, 0x1

    return v9

    .line 260
    .end local v8    # "_result":[Lcyanogenmod/app/Profile;
    :sswitch_a
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 263
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 268
    :goto_c
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->profileExists(Landroid/os/ParcelUuid;)Z

    move-result v6

    .line 269
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v6, :cond_d

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v9, 0x1

    return v9

    .line 266
    .end local v6    # "_result":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_c

    .line 270
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v6    # "_result":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_d

    .line 275
    .end local v6    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->profileExistsByName(Ljava/lang/String;)Z

    move-result v6

    .line 279
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v6, :cond_e

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v9, 0x1

    return v9

    .line 280
    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    .line 285
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_c
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->notificationGroupExistsByName(Ljava/lang/String;)Z

    move-result v6

    .line 289
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v6, :cond_f

    const/4 v9, 0x1

    :goto_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v9, 0x1

    return v9

    .line 290
    :cond_f
    const/4 v9, 0x0

    goto :goto_f

    .line 295
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_d
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v7

    .line 297
    .local v7, "_result":[Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v9, 0x1

    invoke-virtual {p3, v7, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 299
    const/4 v9, 0x1

    return v9

    .line 303
    .end local v7    # "_result":[Landroid/app/NotificationGroup;
    :sswitch_e
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    .line 306
    sget-object v9, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 311
    :goto_10
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->addNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/4 v9, 0x1

    return v9

    .line 309
    :cond_10
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/app/NotificationGroup;
    goto :goto_10

    .line 317
    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_f
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    .line 320
    sget-object v9, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 325
    :goto_11
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v9, 0x1

    return v9

    .line 323
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    goto :goto_11

    .line 331
    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_10
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    .line 334
    sget-object v9, Landroid/app/NotificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 339
    :goto_12
    invoke-virtual {p0, v0}, Lcyanogenmod/app/IProfileManager$Stub;->updateNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v9, 0x1

    return v9

    .line 337
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/NotificationGroup;
    goto :goto_12

    .line 345
    .end local v0    # "_arg0":Landroid/app/NotificationGroup;
    :sswitch_11
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcyanogenmod/app/IProfileManager$Stub;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v4

    .line 349
    .local v4, "_result":Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v4, :cond_13

    .line 351
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 357
    :goto_13
    const/4 v9, 0x1

    return v9

    .line 355
    :cond_13
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 361
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/app/NotificationGroup;
    :sswitch_12
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    .line 364
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 369
    :goto_14
    invoke-virtual {p0, v1}, Lcyanogenmod/app/IProfileManager$Stub;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;

    move-result-object v4

    .line 370
    .restart local v4    # "_result":Landroid/app/NotificationGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v4, :cond_15

    .line 372
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v9, 0x1

    invoke-virtual {v4, p3, v9}, Landroid/app/NotificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 378
    :goto_15
    const/4 v9, 0x1

    return v9

    .line 367
    .end local v4    # "_result":Landroid/app/NotificationGroup;
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/ParcelUuid;
    goto :goto_14

    .line 376
    .end local v1    # "_arg0":Landroid/os/ParcelUuid;
    .restart local v4    # "_result":Landroid/app/NotificationGroup;
    :cond_15
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 382
    .end local v4    # "_result":Landroid/app/NotificationGroup;
    :sswitch_13
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->resetAll()V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v9, 0x1

    return v9

    .line 389
    :sswitch_14
    const-string/jumbo v9, "cyanogenmod.app.IProfileManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcyanogenmod/app/IProfileManager$Stub;->isEnabled()Z

    move-result v6

    .line 391
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    if-eqz v6, :cond_16

    const/4 v9, 0x1

    :goto_16
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v9, 0x1

    return v9

    .line 392
    :cond_16
    const/4 v9, 0x0

    goto :goto_16

    .line 123
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
