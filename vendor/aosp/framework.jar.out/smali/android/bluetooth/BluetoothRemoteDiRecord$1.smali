.class final Landroid/bluetooth/BluetoothRemoteDiRecord$1;
.super Ljava/lang/Object;
.source "BluetoothRemoteDiRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothRemoteDiRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/BluetoothRemoteDiRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothRemoteDiRecord;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    new-instance v0, Landroid/bluetooth/BluetoothRemoteDiRecord;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothRemoteDiRecord;-><init>(IIIII)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothRemoteDiRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothRemoteDiRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothRemoteDiRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 138
    new-array v0, p1, [Landroid/bluetooth/BluetoothRemoteDiRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothRemoteDiRecord$1;->newArray(I)[Landroid/bluetooth/BluetoothRemoteDiRecord;

    move-result-object v0

    return-object v0
.end method
