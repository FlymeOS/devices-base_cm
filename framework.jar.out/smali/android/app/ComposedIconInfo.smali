.class public Landroid/app/ComposedIconInfo;
.super Ljava/lang/Object;
.source "ComposedIconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ComposedIconInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public colorFilter:[F

.field public iconBacks:[I

.field public iconDensity:I

.field public iconMask:I

.field public iconScale:F

.field public iconSize:I

.field public iconUpon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Landroid/app/ComposedIconInfo$1;

    invoke-direct {v0}, Landroid/app/ComposedIconInfo$1;-><init>()V

    sput-object v0, Landroid/app/ComposedIconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    .local v0, "backCount":I
    if-lez v0, :cond_0

    .line 40
    new-array v3, v0, [I

    iput-object v3, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    .line 41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 42
    iget-object v3, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    .local v1, "colorFilterSize":I
    if-lez v1, :cond_1

    .line 49
    new-array v3, v1, [F

    iput-object v3, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    .line 50
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 51
    iget-object v3, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    aput v4, v3, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ComposedIconInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ComposedIconInfo$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/app/ComposedIconInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    .line 63
    iget v5, p0, Landroid/app/ComposedIconInfo;->iconScale:F

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 64
    iget v5, p0, Landroid/app/ComposedIconInfo;->iconDensity:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v5, p0, Landroid/app/ComposedIconInfo;->iconSize:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v5, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    array-length v5, v5

    :goto_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v5, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    if-eqz v5, :cond_1

    .line 68
    iget-object v0, p0, Landroid/app/ComposedIconInfo;->iconBacks:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 69
    .local v3, "resId":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "resId":I
    :cond_0
    move v5, v6

    .line 66
    goto :goto_0

    .line 72
    :cond_1
    iget v5, p0, Landroid/app/ComposedIconInfo;->iconMask:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v5, p0, Landroid/app/ComposedIconInfo;->iconUpon:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v5, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    if-eqz v5, :cond_2

    .line 75
    iget-object v5, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/app/ComposedIconInfo;->colorFilter:[F

    .local v0, "arr$":[F
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_3

    aget v4, v0, v1

    .line 77
    .local v4, "val":F
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    .end local v0    # "arr$":[F
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "val":F
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    :cond_3
    return-void
.end method
