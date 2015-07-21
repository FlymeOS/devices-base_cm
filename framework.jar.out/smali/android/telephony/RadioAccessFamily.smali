.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "radioAccessFamily"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    .line 67
    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    .line 68
    return-void
.end method

.method public static getRafFromNetworkType(I)I
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 139
    const v2, 0x10006

    .line 140
    .local v2, "GSM":I
    const v3, 0x8e00

    .line 141
    .local v3, "HS":I
    const/16 v0, 0x70

    .line 142
    .local v0, "CDMA":I
    const/16 v1, 0x1180

    .line 143
    .local v1, "EVDO":I
    const v4, 0x8e08

    .line 147
    .local v4, "WCDMA":I
    packed-switch p0, :pswitch_data_0

    .line 188
    const/4 v5, 0x1

    .line 191
    .local v5, "raf":I
    :goto_0
    return v5

    .line 149
    .end local v5    # "raf":I
    :pswitch_0
    const v5, 0x18e0e

    .line 150
    .restart local v5    # "raf":I
    goto :goto_0

    .line 152
    .end local v5    # "raf":I
    :pswitch_1
    const v5, 0x10006

    .line 153
    .restart local v5    # "raf":I
    goto :goto_0

    .line 155
    .end local v5    # "raf":I
    :pswitch_2
    const v5, 0x8e08

    .line 156
    .restart local v5    # "raf":I
    goto :goto_0

    .line 158
    .end local v5    # "raf":I
    :pswitch_3
    const v5, 0x18e0e

    .line 159
    .restart local v5    # "raf":I
    goto :goto_0

    .line 161
    .end local v5    # "raf":I
    :pswitch_4
    const/16 v5, 0x70

    .line 162
    .restart local v5    # "raf":I
    goto :goto_0

    .line 164
    .end local v5    # "raf":I
    :pswitch_5
    const/16 v5, 0x51f0

    .line 165
    .restart local v5    # "raf":I
    goto :goto_0

    .line 167
    .end local v5    # "raf":I
    :pswitch_6
    const v5, 0x1ce0e

    .line 168
    .restart local v5    # "raf":I
    goto :goto_0

    .line 170
    .end local v5    # "raf":I
    :pswitch_7
    const v5, 0x1dffe

    .line 171
    .restart local v5    # "raf":I
    goto :goto_0

    .line 173
    .end local v5    # "raf":I
    :pswitch_8
    const/16 v5, 0x4000

    .line 174
    .restart local v5    # "raf":I
    goto :goto_0

    .line 176
    .end local v5    # "raf":I
    :pswitch_9
    const v5, 0xce08

    .line 177
    .restart local v5    # "raf":I
    goto :goto_0

    .line 179
    .end local v5    # "raf":I
    :pswitch_a
    const/16 v5, 0x70

    .line 180
    .restart local v5    # "raf":I
    goto :goto_0

    .line 182
    .end local v5    # "raf":I
    :pswitch_b
    const/16 v5, 0x1180

    .line 183
    .restart local v5    # "raf":I
    goto :goto_0

    .line 185
    .end local v5    # "raf":I
    :pswitch_c
    const v5, 0x19ffe

    .line 186
    .restart local v5    # "raf":I
    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRadioAccessFamily = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "outParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
