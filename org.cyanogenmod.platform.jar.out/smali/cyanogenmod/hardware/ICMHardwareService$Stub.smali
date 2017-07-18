.class public abstract Lcyanogenmod/hardware/ICMHardwareService$Stub;
.super Landroid/os/Binder;
.source "ICMHardwareService.java"

# interfaces
.implements Lcyanogenmod/hardware/ICMHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/ICMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.hardware.ICMHardwareService"

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getColorBalance:I = 0x1d

.field static final TRANSACTION_getColorBalanceMax:I = 0x1c

.field static final TRANSACTION_getColorBalanceMin:I = 0x1b

.field static final TRANSACTION_getCurrentDisplayMode:I = 0x11

.field static final TRANSACTION_getDefaultDisplayMode:I = 0x12

.field static final TRANSACTION_getDefaultPictureAdjustment:I = 0x20

.field static final TRANSACTION_getDisplayColorCalibration:I = 0x4

.field static final TRANSACTION_getDisplayGammaCalibration:I = 0x7

.field static final TRANSACTION_getDisplayModes:I = 0x10

.field static final TRANSACTION_getLtoDestination:I = 0xc

.field static final TRANSACTION_getLtoDownloadInterval:I = 0xd

.field static final TRANSACTION_getLtoSource:I = 0xb

.field static final TRANSACTION_getNumGammaControls:I = 0x6

.field static final TRANSACTION_getPictureAdjustment:I = 0x1f

.field static final TRANSACTION_getPictureAdjustmentRanges:I = 0x22

.field static final TRANSACTION_getSerialNumber:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getThermalState:I = 0x16

.field static final TRANSACTION_getUniqueDeviceId:I = 0x1a

.field static final TRANSACTION_getVibratorIntensity:I = 0x9

.field static final TRANSACTION_isSunlightEnhancementSelfManaged:I = 0x19

.field static final TRANSACTION_readPersistentBytes:I = 0x15

.field static final TRANSACTION_registerThermalListener:I = 0x17

.field static final TRANSACTION_requireAdaptiveBacklightForSunlightEnhancement:I = 0xf

.field static final TRANSACTION_set:I = 0x3

.field static final TRANSACTION_setColorBalance:I = 0x1e

.field static final TRANSACTION_setDisplayColorCalibration:I = 0x5

.field static final TRANSACTION_setDisplayGammaCalibration:I = 0x8

.field static final TRANSACTION_setDisplayMode:I = 0x13

.field static final TRANSACTION_setPictureAdjustment:I = 0x21

.field static final TRANSACTION_setVibratorIntensity:I = 0xa

.field static final TRANSACTION_unRegisterThermalListener:I = 0x18

.field static final TRANSACTION_writePersistentBytes:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    const-string/jumbo v0, "cyanogenmod.hardware.ICMHardwareService"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ICMHardwareService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 169
    if-nez p0, :cond_0

    .line 170
    return-object v1

    .line 172
    :cond_0
    const-string/jumbo v1, "cyanogenmod.hardware.ICMHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 173
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/hardware/ICMHardwareService;

    if-eqz v1, :cond_1

    .line 174
    check-cast v0, Lcyanogenmod/hardware/ICMHardwareService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 176
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 180
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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
    .line 184
    sparse-switch p1, :sswitch_data_0

    .line 532
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v24

    return v24

    .line 188
    :sswitch_0
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    const/16 v24, 0x1

    return v24

    .line 193
    :sswitch_1
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getSupportedFeatures()I

    move-result v13

    .line 195
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/16 v24, 0x1

    return v24

    .line 201
    .end local v13    # "_result":I
    :sswitch_2
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 204
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->get(I)Z

    move-result v19

    .line 205
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v19, :cond_0

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/16 v24, 0x1

    return v24

    .line 206
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 211
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_3
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_1

    const/4 v10, 0x1

    .line 216
    .local v10, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->set(IZ)Z

    move-result v19

    .line 217
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v19, :cond_2

    const/16 v24, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/16 v24, 0x1

    return v24

    .line 215
    .end local v10    # "_arg1":Z
    .end local v19    # "_result":Z
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_1

    .line 218
    .restart local v19    # "_result":Z
    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    .line 223
    .end local v4    # "_arg0":I
    .end local v10    # "_arg1":Z
    .end local v19    # "_result":Z
    :sswitch_4
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayColorCalibration()[I

    move-result-object v22

    .line 225
    .local v22, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 227
    const/16 v24, 0x1

    return v24

    .line 231
    .end local v22    # "_result":[I
    :sswitch_5
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 234
    .local v9, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayColorCalibration([I)Z

    move-result v19

    .line 235
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v19, :cond_3

    const/16 v24, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/16 v24, 0x1

    return v24

    .line 236
    :cond_3
    const/16 v24, 0x0

    goto :goto_3

    .line 241
    .end local v9    # "_arg0":[I
    .end local v19    # "_result":Z
    :sswitch_6
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getNumGammaControls()I

    move-result v13

    .line 243
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/16 v24, 0x1

    return v24

    .line 249
    .end local v13    # "_result":I
    :sswitch_7
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 252
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayGammaCalibration(I)[I

    move-result-object v22

    .line 253
    .restart local v22    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 255
    const/16 v24, 0x1

    return v24

    .line 259
    .end local v4    # "_arg0":I
    .end local v22    # "_result":[I
    :sswitch_8
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    .line 264
    .local v12, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayGammaCalibration(I[I)Z

    move-result v19

    .line 265
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v19, :cond_4

    const/16 v24, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/16 v24, 0x1

    return v24

    .line 266
    :cond_4
    const/16 v24, 0x0

    goto :goto_4

    .line 271
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":[I
    .end local v19    # "_result":Z
    :sswitch_9
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getVibratorIntensity()[I

    move-result-object v22

    .line 273
    .restart local v22    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 275
    const/16 v24, 0x1

    return v24

    .line 279
    .end local v22    # "_result":[I
    :sswitch_a
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 282
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setVibratorIntensity(I)Z

    move-result v19

    .line 283
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v19, :cond_5

    const/16 v24, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/16 v24, 0x1

    return v24

    .line 284
    :cond_5
    const/16 v24, 0x0

    goto :goto_5

    .line 289
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_b
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoSource()Ljava/lang/String;

    move-result-object v18

    .line 291
    .local v18, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    const/16 v24, 0x1

    return v24

    .line 297
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoDestination()Ljava/lang/String;

    move-result-object v18

    .line 299
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    const/16 v24, 0x1

    return v24

    .line 305
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getLtoDownloadInterval()J

    move-result-wide v14

    .line 307
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 309
    const/16 v24, 0x1

    return v24

    .line 313
    .end local v14    # "_result":J
    :sswitch_e
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v18

    .line 315
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    const/16 v24, 0x1

    return v24

    .line 321
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v19

    .line 323
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v19, :cond_6

    const/16 v24, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    const/16 v24, 0x1

    return v24

    .line 324
    :cond_6
    const/16 v24, 0x0

    goto :goto_6

    .line 329
    .end local v19    # "_result":Z
    :sswitch_10
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v23

    .line 331
    .local v23, "_result":[Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/16 v24, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 333
    const/16 v24, 0x1

    return v24

    .line 337
    .end local v23    # "_result":[Lcyanogenmod/hardware/DisplayMode;
    :sswitch_11
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v16

    .line 339
    .local v16, "_result":Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v16, :cond_7

    .line 341
    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    :goto_7
    const/16 v24, 0x1

    return v24

    .line 345
    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 351
    .end local v16    # "_result":Lcyanogenmod/hardware/DisplayMode;
    :sswitch_12
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v16

    .line 353
    .restart local v16    # "_result":Lcyanogenmod/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v16, :cond_8

    .line 355
    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    :goto_8
    const/16 v24, 0x1

    return v24

    .line 359
    :cond_8
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 365
    .end local v16    # "_result":Lcyanogenmod/hardware/DisplayMode;
    :sswitch_13
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_9

    .line 368
    sget-object v24, Lcyanogenmod/hardware/DisplayMode;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/hardware/DisplayMode;

    .line 374
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_a

    const/4 v10, 0x1

    .line 375
    .restart local v10    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v19

    .line 376
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v19, :cond_b

    const/16 v24, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/16 v24, 0x1

    return v24

    .line 371
    .end local v10    # "_arg1":Z
    .end local v19    # "_result":Z
    :cond_9
    const/4 v5, 0x0

    .local v5, "_arg0":Lcyanogenmod/hardware/DisplayMode;
    goto :goto_9

    .line 374
    .end local v5    # "_arg0":Lcyanogenmod/hardware/DisplayMode;
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "_arg1":Z
    goto :goto_a

    .line 377
    .restart local v19    # "_result":Z
    :cond_b
    const/16 v24, 0x0

    goto :goto_b

    .line 382
    .end local v10    # "_arg1":Z
    .end local v19    # "_result":Z
    :sswitch_14
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 387
    .local v11, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v19

    .line 388
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v19, :cond_c

    const/16 v24, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/16 v24, 0x1

    return v24

    .line 389
    :cond_c
    const/16 v24, 0x0

    goto :goto_c

    .line 394
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":[B
    .end local v19    # "_result":Z
    :sswitch_15
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 397
    .restart local v8    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v20

    .line 398
    .local v20, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 400
    const/16 v24, 0x1

    return v24

    .line 404
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":[B
    :sswitch_16
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getThermalState()I

    move-result v13

    .line 406
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/16 v24, 0x1

    return v24

    .line 412
    .end local v13    # "_result":I
    :sswitch_17
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;

    move-result-object v7

    .line 415
    .local v7, "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z

    move-result v19

    .line 416
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v19, :cond_d

    const/16 v24, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/16 v24, 0x1

    return v24

    .line 417
    :cond_d
    const/16 v24, 0x0

    goto :goto_d

    .line 422
    .end local v7    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    .end local v19    # "_result":Z
    :sswitch_18
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcyanogenmod/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/IThermalListenerCallback;

    move-result-object v7

    .line 425
    .restart local v7    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z

    move-result v19

    .line 426
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v19, :cond_e

    const/16 v24, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/16 v24, 0x1

    return v24

    .line 427
    :cond_e
    const/16 v24, 0x0

    goto :goto_e

    .line 432
    .end local v7    # "_arg0":Lcyanogenmod/hardware/IThermalListenerCallback;
    .end local v19    # "_result":Z
    :sswitch_19
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->isSunlightEnhancementSelfManaged()Z

    move-result v19

    .line 434
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v19, :cond_f

    const/16 v24, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/16 v24, 0x1

    return v24

    .line 435
    :cond_f
    const/16 v24, 0x0

    goto :goto_f

    .line 440
    .end local v19    # "_result":Z
    :sswitch_1a
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v18

    .line 442
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    const/16 v24, 0x1

    return v24

    .line 448
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getColorBalanceMin()I

    move-result v13

    .line 450
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/16 v24, 0x1

    return v24

    .line 456
    .end local v13    # "_result":I
    :sswitch_1c
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getColorBalanceMax()I

    move-result v13

    .line 458
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/16 v24, 0x1

    return v24

    .line 464
    .end local v13    # "_result":I
    :sswitch_1d
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getColorBalance()I

    move-result v13

    .line 466
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/16 v24, 0x1

    return v24

    .line 472
    .end local v13    # "_result":I
    :sswitch_1e
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 475
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setColorBalance(I)Z

    move-result v19

    .line 476
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v19, :cond_10

    const/16 v24, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/16 v24, 0x1

    return v24

    .line 477
    :cond_10
    const/16 v24, 0x0

    goto :goto_10

    .line 482
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_1f
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v17

    .line 484
    .local v17, "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v17, :cond_11

    .line 486
    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    .line 492
    :goto_11
    const/16 v24, 0x1

    return v24

    .line 490
    :cond_11
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 496
    .end local v17    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_20
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v17

    .line 498
    .restart local v17    # "_result":Lcyanogenmod/hardware/HSIC;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v17, :cond_12

    .line 500
    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/hardware/HSIC;->writeToParcel(Landroid/os/Parcel;I)V

    .line 506
    :goto_12
    const/16 v24, 0x1

    return v24

    .line 504
    :cond_12
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 510
    .end local v17    # "_result":Lcyanogenmod/hardware/HSIC;
    :sswitch_21
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_13

    .line 513
    sget-object v24, Lcyanogenmod/hardware/HSIC;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcyanogenmod/hardware/HSIC;

    .line 518
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v19

    .line 519
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v19, :cond_14

    const/16 v24, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/16 v24, 0x1

    return v24

    .line 516
    .end local v19    # "_result":Z
    :cond_13
    const/4 v6, 0x0

    .local v6, "_arg0":Lcyanogenmod/hardware/HSIC;
    goto :goto_13

    .line 520
    .end local v6    # "_arg0":Lcyanogenmod/hardware/HSIC;
    .restart local v19    # "_result":Z
    :cond_14
    const/16 v24, 0x0

    goto :goto_14

    .line 525
    .end local v19    # "_result":Z
    :sswitch_22
    const-string/jumbo v24, "cyanogenmod.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->getPictureAdjustmentRanges()[F

    move-result-object v21

    .line 527
    .local v21, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 529
    const/16 v24, 0x1

    return v24

    .line 184
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
