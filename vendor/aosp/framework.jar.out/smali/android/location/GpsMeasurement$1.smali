.class final Landroid/location/GpsMeasurement$1;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurement;
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
        "Landroid/location/GpsMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1163
    new-instance v0, Landroid/location/GpsMeasurement;

    invoke-direct {v0}, Landroid/location/GpsMeasurement;-><init>()V

    .line 1165
    .local v0, "gpsMeasurement":Landroid/location/GpsMeasurement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set17(Landroid/location/GpsMeasurement;I)I

    .line 1166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set20(Landroid/location/GpsMeasurement;B)B

    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set30(Landroid/location/GpsMeasurement;D)D

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set28(Landroid/location/GpsMeasurement;S)S

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set25(Landroid/location/GpsMeasurement;J)J

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set26(Landroid/location/GpsMeasurement;J)J

    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set10(Landroid/location/GpsMeasurement;D)D

    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set22(Landroid/location/GpsMeasurement;D)D

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set23(Landroid/location/GpsMeasurement;D)D

    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set1(Landroid/location/GpsMeasurement;S)S

    .line 1175
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set0(Landroid/location/GpsMeasurement;D)D

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set2(Landroid/location/GpsMeasurement;D)D

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set21(Landroid/location/GpsMeasurement;D)D

    .line 1178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set24(Landroid/location/GpsMeasurement;D)D

    .line 1179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set11(Landroid/location/GpsMeasurement;D)D

    .line 1180
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set12(Landroid/location/GpsMeasurement;D)D

    .line 1181
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set7(Landroid/location/GpsMeasurement;F)F

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set6(Landroid/location/GpsMeasurement;J)J

    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set8(Landroid/location/GpsMeasurement;D)D

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set9(Landroid/location/GpsMeasurement;D)D

    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set18(Landroid/location/GpsMeasurement;B)B

    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set5(Landroid/location/GpsMeasurement;I)I

    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set29(Landroid/location/GpsMeasurement;S)S

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set13(Landroid/location/GpsMeasurement;D)D

    .line 1189
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set14(Landroid/location/GpsMeasurement;D)D

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v0, v2}, Landroid/location/GpsMeasurement;->-set19(Landroid/location/GpsMeasurement;B)B

    .line 1191
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set27(Landroid/location/GpsMeasurement;D)D

    .line 1192
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set15(Landroid/location/GpsMeasurement;D)D

    .line 1193
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set16(Landroid/location/GpsMeasurement;D)D

    .line 1194
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set3(Landroid/location/GpsMeasurement;D)D

    .line 1195
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->-set4(Landroid/location/GpsMeasurement;D)D

    .line 1196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->-set31(Landroid/location/GpsMeasurement;Z)Z

    .line 1198
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1162
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsMeasurement;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1203
    new-array v0, p1, [Landroid/location/GpsMeasurement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->newArray(I)[Landroid/location/GpsMeasurement;

    move-result-object v0

    return-object v0
.end method
