.class public final Landroid/bluetooth/le/AdvertiseData;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertiseData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/AdvertiseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIncludeDeviceName:Z

.field private final mIncludeTxPowerLevel:Z

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Landroid/bluetooth/le/AdvertiseData$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ)V
    .locals 0
    .param p4, "includeTxPowerLevel"    # Z
    .param p5, "includeDeviceName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p2, "manufacturerData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p3, "serviceData":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    .line 57
    iput-object p2, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 58
    iput-object p3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    .line 59
    iput-boolean p4, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    .line 60
    iput-boolean p5, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZLandroid/bluetooth/le/AdvertiseData$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Landroid/util/SparseArray;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Landroid/bluetooth/le/AdvertiseData$1;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/le/AdvertiseData;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 118
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 120
    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    .line 121
    .local v0, "other":Landroid/bluetooth/le/AdvertiseData;
    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    iget-object v4, v0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v4, v0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    iget-object v4, v0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-static {v3, v4}, Landroid/bluetooth/le/BluetoothLeUtils;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    iget-boolean v4, v0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    iget-boolean v4, v0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getIncludeDeviceName()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    return v0
.end method

.method public getIncludeTxPowerLevel()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    return v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertiseData [mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIncludeTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeTxPowerLevel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIncludeDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertiseData;->mIncludeDeviceName:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 144
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceUuids:Ljava/util/List;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 147
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 149
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 151
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    array-length v4, v0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 159
    .end local v0    # "data":[B
    :cond_1
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 161
    .local v3, "uuid":Landroid/os/ParcelUuid;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 162
    iget-object v4, p0, Landroid/bluetooth/le/AdvertiseData;->mServiceData:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 163
    .restart local v0    # "data":[B
    if-nez v0, :cond_2

    .line 164
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 166
    :cond_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    array-length v4, v0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2

    .line 171
    .end local v0    # "data":[B
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_3
    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    invoke-virtual {p0}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_4
    int-to-byte v4, v5

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 173
    return-void

    :cond_4
    move v4, v6

    .line 171
    goto :goto_3

    :cond_5
    move v5, v6

    .line 172
    goto :goto_4
.end method
