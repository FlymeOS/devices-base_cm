.class public abstract Lcyanogenmod/hardware/ILiveDisplayService$Stub;
.super Landroid/os/Binder;
.source "ILiveDisplayService.java"

# interfaces
.implements Lcyanogenmod/hardware/ILiveDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/ILiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.ILiveDisplayService"

.field static final TRANSACTION_getColorAdjustment:I = 0x4

.field static final TRANSACTION_getColorTemperature:I = 0x10

.field static final TRANSACTION_getConfig:I = 0x1

.field static final TRANSACTION_getDayColorTemperature:I = 0xc

.field static final TRANSACTION_getDefaultPictureAdjustment:I = 0x14

.field static final TRANSACTION_getMode:I = 0x2

.field static final TRANSACTION_getNightColorTemperature:I = 0xe

.field static final TRANSACTION_getPictureAdjustment:I = 0x13

.field static final TRANSACTION_isAutoContrastEnabled:I = 0x6

.field static final TRANSACTION_isAutomaticOutdoorModeEnabled:I = 0x11

.field static final TRANSACTION_isCABCEnabled:I = 0x8

.field static final TRANSACTION_isColorEnhancementEnabled:I = 0xa

.field static final TRANSACTION_setAutoContrastEnabled:I = 0x7

.field static final TRANSACTION_setAutomaticOutdoorModeEnabled:I = 0x12

.field static final TRANSACTION_setCABCEnabled:I = 0x9

.field static final TRANSACTION_setColorAdjustment:I = 0x5

.field static final TRANSACTION_setColorEnhancementEnabled:I = 0xb

.field static final TRANSACTION_setDayColorTemperature:I = 0xd

.field static final TRANSACTION_setMode:I = 0x3

.field static final TRANSACTION_setNightColorTemperature:I = 0xf

.field static final TRANSACTION_setPictureAdjustment:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 109
    const-string/jumbo v0, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ILiveDisplayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 117
    if-nez p0, :cond_0

    .line 118
    return-object v1

    .line 120
    :cond_0
    const-string/jumbo v1, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 121
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/hardware/ILiveDisplayService;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Lcyanogenmod/hardware/ILiveDisplayService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 124
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 128
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
    .line 132
    sparse-switch p1, :sswitch_data_0

    .line 349
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 136
    :sswitch_0
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    const/4 v9, 0x1

    return v9

    .line 141
    :sswitch_1
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getConfig()Lcyanogenmod/hardware/LiveDisplayConfig;

    move-result-object v6

    .line 143
    .local v6, "_result":Lcyanogenmod/hardware/LiveDisplayConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v6, :cond_0

    .line 145
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Lcyanogenmod/hardware/LiveDisplayConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 149
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 155
    .end local v6    # "_result":Lcyanogenmod/hardware/LiveDisplayConfig;
    :sswitch_2
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getMode()I

    move-result v4

    .line 157
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v9, 0x1

    return v9

    .line 163
    .end local v4    # "_result":I
    :sswitch_3
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setMode(I)Z

    move-result v7

    .line 167
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v7, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v9, 0x1

    return v9

    .line 168
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 173
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getColorAdjustment()[F

    move-result-object v8

    .line 175
    .local v8, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 177
    const/4 v9, 0x1

    return v9

    .line 181
    .end local v8    # "_result":[F
    :sswitch_5
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 184
    .local v3, "_arg0":[F
    invoke-virtual {p0, v3}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setColorAdjustment([F)Z

    move-result v7

    .line 185
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v7, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v9, 0x1

    return v9

    .line 186
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 191
    .end local v3    # "_arg0":[F
    .end local v7    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isAutoContrastEnabled()Z

    move-result v7

    .line 193
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v7, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v9, 0x1

    return v9

    .line 194
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 199
    .end local v7    # "_result":Z
    :sswitch_7
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    .line 202
    .local v2, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setAutoContrastEnabled(Z)Z

    move-result v7

    .line 203
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v7, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v9, 0x1

    return v9

    .line 201
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_4

    .line 204
    .restart local v7    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 209
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_8
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isCABCEnabled()Z

    move-result v7

    .line 211
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v7, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v9, 0x1

    return v9

    .line 212
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 217
    .end local v7    # "_result":Z
    :sswitch_9
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x1

    .line 220
    .restart local v2    # "_arg0":Z
    :goto_7
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setCABCEnabled(Z)Z

    move-result v7

    .line 221
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v7, :cond_8

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v9, 0x1

    return v9

    .line 219
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_7

    .line 222
    .restart local v7    # "_result":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    .line 227
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_a
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isColorEnhancementEnabled()Z

    move-result v7

    .line 229
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v7, :cond_9

    const/4 v9, 0x1

    :goto_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v9, 0x1

    return v9

    .line 230
    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    .line 235
    .end local v7    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x1

    .line 238
    .restart local v2    # "_arg0":Z
    :goto_a
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setColorEnhancementEnabled(Z)Z

    move-result v7

    .line 239
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v7, :cond_b

    const/4 v9, 0x1

    :goto_b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v9, 0x1

    return v9

    .line 237
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_a

    .line 240
    .restart local v7    # "_result":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_b

    .line 245
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_c
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getDayColorTemperature()I

    move-result v4

    .line 247
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/4 v9, 0x1

    return v9

    .line 253
    .end local v4    # "_result":I
    :sswitch_d
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setDayColorTemperature(I)Z

    move-result v7

    .line 257
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v7, :cond_c

    const/4 v9, 0x1

    :goto_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v9, 0x1

    return v9

    .line 258
    :cond_c
    const/4 v9, 0x0

    goto :goto_c

    .line 263
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_e
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getNightColorTemperature()I

    move-result v4

    .line 265
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v9, 0x1

    return v9

    .line 271
    .end local v4    # "_result":I
    :sswitch_f
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setNightColorTemperature(I)Z

    move-result v7

    .line 275
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v7, :cond_d

    const/4 v9, 0x1

    :goto_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v9, 0x1

    return v9

    .line 276
    :cond_d
    const/4 v9, 0x0

    goto :goto_d

    .line 281
    .end local v0    # "_arg0":I
    .end local v7    # "_result":Z
    :sswitch_10
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getColorTemperature()I

    move-result v4

    .line 283
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v9, 0x1

    return v9

    .line 289
    .end local v4    # "_result":I
    :sswitch_11
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->isAutomaticOutdoorModeEnabled()Z

    move-result v7

    .line 291
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v7, :cond_e

    const/4 v9, 0x1

    :goto_e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v9, 0x1

    return v9

    .line 292
    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    .line 297
    .end local v7    # "_result":Z
    :sswitch_12
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    const/4 v2, 0x1

    .line 300
    .restart local v2    # "_arg0":Z
    :goto_f
    invoke-virtual {p0, v2}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result v7

    .line 301
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v7, :cond_10

    const/4 v9, 0x1

    :goto_10
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v9, 0x1

    return v9

    .line 299
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_f

    .line 302
    .restart local v7    # "_result":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_10

    .line 307
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_13
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v5

    .line 309
    .local v5, "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v5, :cond_11

    .line 311
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    :goto_11
    const/4 v9, 0x1

    return v9

    .line 315
    :cond_11
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 321
    .end local v5    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_14
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v5

    .line 323
    .restart local v5    # "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v5, :cond_12

    .line 325
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v9, 0x1

    invoke-virtual {v5, p3, v9}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    :goto_12
    const/4 v9, 0x1

    return v9

    .line 329
    :cond_12
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 335
    .end local v5    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_15
    const-string/jumbo v9, "cyanogenmod.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    .line 338
    sget-object v9, Lcyanogenmod/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/hardware/HSIC;

    .line 343
    :goto_13
    invoke-virtual {p0, v1}, Lcyanogenmod/hardware/ILiveDisplayService$Stub;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v7

    .line 344
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v7, :cond_14

    const/4 v9, 0x1

    :goto_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v9, 0x1

    return v9

    .line 341
    .end local v7    # "_result":Z
    :cond_13
    const/4 v1, 0x0

    .local v1, "_arg0":Lcyanogenmod/hardware/HSIC;
    goto :goto_13

    .line 345
    .end local v1    # "_arg0":Lcyanogenmod/hardware/HSIC;
    .restart local v7    # "_result":Z
    :cond_14
    const/4 v9, 0x0

    goto :goto_14

    .line 132
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
