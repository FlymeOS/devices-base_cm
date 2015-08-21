.class final Landroid/telephony/SubInfoRecord$1;
.super Ljava/lang/Object;
.source "SubInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubInfoRecord;
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
        "Landroid/telephony/SubInfoRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubInfoRecord;
    .locals 17
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 115
    .local v4, "subId":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "iccId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .local v7, "slotId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "displayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 119
    .local v9, "nameSource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 120
    .local v10, "color":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, "number":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 122
    .local v12, "displayNumberFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 123
    .local v13, "dataRoaming":I
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 124
    .local v14, "iconRes":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readIntArray([I)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 126
    .local v15, "mcc":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 128
    .local v16, "mnc":I
    new-instance v3, Landroid/telephony/SubInfoRecord;

    invoke-direct/range {v3 .. v16}, Landroid/telephony/SubInfoRecord;-><init>(JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;II[III)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/telephony/SubInfoRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SubInfoRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 134
    new-array v0, p1, [Landroid/telephony/SubInfoRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/telephony/SubInfoRecord$1;->newArray(I)[Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method
