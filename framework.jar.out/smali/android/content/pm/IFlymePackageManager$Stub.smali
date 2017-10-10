.class public abstract Landroid/content/pm/IFlymePackageManager$Stub;
.super Landroid/os/Binder;
.source "IFlymePackageManager.java"

# interfaces
.implements Landroid/content/pm/IFlymePackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IFlymePackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IFlymePackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IFlymePackageManager"

.field static final TRANSACTION_backupData:I = 0x1

.field static final TRANSACTION_changeInterceptPackage:I = 0x9

.field static final TRANSACTION_changeMayForbitPackage:I = 0xf

.field static final TRANSACTION_getInterceptPackage:I = 0x7

.field static final TRANSACTION_getInternalAppList:I = 0x5

.field static final TRANSACTION_getMayForbitPackage:I = 0xd

.field static final TRANSACTION_getPackageActivateState:I = 0x6

.field static final TRANSACTION_getPackageInfoForVersion:I = 0x4

.field static final TRANSACTION_getProtectionState:I = 0xb

.field static final TRANSACTION_getSystemAppPath:I = 0x12

.field static final TRANSACTION_getSystemAppRecord:I = 0x11

.field static final TRANSACTION_isMzApp:I = 0x13

.field static final TRANSACTION_resetVersion:I = 0x3

.field static final TRANSACTION_setInterceptPackage:I = 0x8

.field static final TRANSACTION_setKeyGuardPackage:I = 0x10

.field static final TRANSACTION_setMayForbitPackage:I = 0xe

.field static final TRANSACTION_setProtectionState:I = 0xc

.field static final TRANSACTION_syncPackageState:I = 0xa

.field static final TRANSACTION_updatePermissions:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.content.pm.IFlymePackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IFlymePackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IFlymePackageManager;
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
    const-string/jumbo v1, "android.content.pm.IFlymePackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IFlymePackageManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/content/pm/IFlymePackageManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IFlymePackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IFlymePackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 15
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

    .line 242
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 43
    :sswitch_0
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v14, 0x1

    return v14

    .line 48
    :sswitch_1
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v7}, Landroid/content/pm/IFlymePackageManager$Stub;->backupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 54
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v13, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v14, 0x1

    return v14

    .line 55
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 60
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_2
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->updatePermissions(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v14, 0x1

    return v14

    .line 69
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->resetVersion(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    const/4 v14, 0x1

    return v14

    .line 78
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 83
    .local v5, "_arg1":I
    invoke-virtual {p0, v2, v5}, Landroid/content/pm/IFlymePackageManager$Stub;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 84
    .local v10, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v10, :cond_1

    .line 86
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_1
    const/4 v14, 0x1

    return v14

    .line 90
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 96
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v10    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_5
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getInternalAppList()Ljava/util/List;

    move-result-object v12

    .line 98
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 100
    const/4 v14, 0x1

    return v14

    .line 104
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->getPackageActivateState(Ljava/lang/String;)Z

    move-result v13

    .line 108
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v13, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v14, 0x1

    return v14

    .line 109
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 114
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":Z
    :sswitch_7
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getInterceptPackage()Ljava/util/List;

    move-result-object v12

    .line 116
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 118
    const/4 v14, 0x1

    return v14

    .line 122
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 125
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Landroid/content/pm/IFlymePackageManager$Stub;->setInterceptPackage(Ljava/util/List;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v14, 0x1

    return v14

    .line 131
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    .line 136
    .local v8, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v2, v8}, Landroid/content/pm/IFlymePackageManager$Stub;->changeInterceptPackage(Ljava/lang/String;Z)Z

    move-result v13

    .line 137
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v13, :cond_4

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v14, 0x1

    return v14

    .line 135
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_3

    .line 138
    .restart local v13    # "_result":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_a
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->syncPackageState()V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v14, 0x1

    return v14

    .line 150
    :sswitch_b
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getProtectionState()Z

    move-result v13

    .line 152
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v13, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v14, 0x1

    return v14

    .line 153
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 158
    .end local v13    # "_result":Z
    :sswitch_c
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    const/4 v4, 0x1

    .line 162
    .local v4, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 163
    .local v6, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v4, v6}, Landroid/content/pm/IFlymePackageManager$Stub;->setProtectionState(ZLandroid/os/IBinder;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v14, 0x1

    return v14

    .line 160
    .end local v4    # "_arg0":Z
    .end local v6    # "_arg1":Landroid/os/IBinder;
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Z
    goto :goto_6

    .line 169
    .end local v4    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/content/pm/IFlymePackageManager$Stub;->getMayForbitPackage()Ljava/util/List;

    move-result-object v12

    .line 171
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 173
    const/4 v14, 0x1

    return v14

    .line 177
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_e
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 180
    .restart local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Landroid/content/pm/IFlymePackageManager$Stub;->setMayForbitPackage(Ljava/util/List;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v14, 0x1

    return v14

    .line 186
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_f
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    const/4 v8, 0x1

    .line 191
    .restart local v8    # "_arg1":Z
    :goto_7
    invoke-virtual {p0, v2, v8}, Landroid/content/pm/IFlymePackageManager$Stub;->changeMayForbitPackage(Ljava/lang/String;Z)Z

    move-result v13

    .line 192
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v13, :cond_8

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v14, 0x1

    return v14

    .line 190
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_7

    .line 193
    .restart local v13    # "_result":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_8

    .line 198
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_10
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_9

    const/4 v8, 0x1

    .line 204
    .restart local v8    # "_arg1":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 205
    .local v9, "_arg2":I
    invoke-virtual {p0, v2, v8, v9}, Landroid/content/pm/IFlymePackageManager$Stub;->setKeyGuardPackage(Ljava/lang/String;ZI)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v14, 0x1

    return v14

    .line 202
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_9

    .line 211
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    :sswitch_11
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/content/pm/IFlymePackageManager$Stub;->getSystemAppRecord(I)Ljava/util/List;

    move-result-object v12

    .line 215
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 217
    const/4 v14, 0x1

    return v14

    .line 221
    .end local v1    # "_arg0":I
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_12
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 226
    .restart local v5    # "_arg1":I
    invoke-virtual {p0, v2, v5}, Landroid/content/pm/IFlymePackageManager$Stub;->getSystemAppPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 227
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    const/4 v14, 0x1

    return v14

    .line 233
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":I
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v14, "android.content.pm.IFlymePackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/pm/IFlymePackageManager$Stub;->isMzApp(Ljava/lang/String;)Z

    move-result v13

    .line 237
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v13, :cond_a

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v14, 0x1

    return v14

    .line 238
    :cond_a
    const/4 v14, 0x0

    goto :goto_a

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
