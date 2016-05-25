.class public final Landroid/bluetooth/BluetoothRemoteDiRecord;
.super Ljava/lang/Object;
.source "BluetoothRemoteDiRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothRemoteDiRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mObject:Ljava/lang/Object;

.field private mProductId:I

.field private mProductVersion:I

.field private mSpecificationId:I

.field private mVendorId:I

.field private mVendorIdSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Landroid/bluetooth/BluetoothRemoteDiRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothRemoteDiRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothRemoteDiRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "vendorId"    # I
    .param p2, "vendorIdSource"    # I
    .param p3, "productId"    # I
    .param p4, "productVersion"    # I
    .param p5, "specificationId"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mObject:Ljava/lang/Object;

    .line 65
    iput p1, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mVendorId:I

    .line 66
    iput p2, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mVendorIdSource:I

    .line 67
    iput p3, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mProductId:I

    .line 68
    iput p4, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mProductVersion:I

    .line 69
    iput p5, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mSpecificationId:I

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getProductId()I
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mProductId:I

    monitor-exit v1

    return v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProductVersion()I
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mProductVersion:I

    monitor-exit v1

    return v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSpecificationId()I
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mSpecificationId:I

    monitor-exit v1

    return v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVendorId()I
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mVendorId:I

    monitor-exit v1

    return v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVendorIdSource()I
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mVendorIdSource:I

    monitor-exit v1

    return v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 119
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mVendorIdSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mProductVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroid/bluetooth/BluetoothRemoteDiRecord;->mSpecificationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method
